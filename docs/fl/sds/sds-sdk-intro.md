# SDS SDK说明文档

## 如何引用

以 spring boot 项目为例

## 添加 pom
```
<dependency>
    <groupId>com._4paradigm.cess.sds</groupId>
    <artifactId>sds-client</artifactId>
    <version>2.2-SNAPSHOT</version>
</dependency>
```

## 初始化

```java
SdsClient sdsClient = new SdsClient("http://sds-workbench.prophet", workspaceId);
```

## 使用示例

详细代码见[`https://gitlab.4pd.io/meteor/ep/sds/sds-workbench/blob/develop/client/src/test/java/com/_4paradigm/cess/sds/client/SdsClientTest.java`](https://gitlab.4pd.io/meteor/ep/sds/sds-workbench/blob/develop/client/src/test/java/com/_4paradigm/cess/sds/client/SdsClientTest.java)

以147为例

```java
sdsClient = new SdsClient("http://172.27.128.147:40121/sds-workbench", 1);
```

### 项目

#### 创建项目

```java
ProjectInfo testProject = new ProjectInfo();
testProject.setProjectKey("test" + new Date().getTime());
testProject.setName("test-" + new Date().getTime());
ProjectInfo.Config projectConfig = testProject.getConfig();
projectConfig.setJobPipelineUrl("http://172.27.128.147:40121/automl-engine/200/"); // pipline地址 
projectConfig.setEngineKey("testonline"); // engineKey
FlinkConfig flinkConfig = new FlinkConfig();
flinkConfig.setFlinkWorkUrl("http://172.27.128.185:41906"); // flink地址
projectConfig.setFlinkConfig(flinkConfig);
testProject.setConfig(projectConfig);
projectInfo = sdsClient.createProjectInfo(testProject);
```

#### 同步项目元数据

```java
// 需project配置pipeline地址
sdsClient.syncProjectMeta(103);
```

### 流式任务

#### 上传 jar

```java
File file = new File("/Users/gqlxj1987/4paradigm/csp-flink-operator/target/flink-operator-basic-1.0-SNAPSHOT.jar");
try {
    jarId = sdsClient.uploadJar(125, new FileInputStream(file), "flink-operator-basic-1.0-SNAPSHOT.jar");
} catch (IOException e) {
    e.printStackTrace();
}
```

#### 注册 jar 包

```java
FlinkJar testJar = new FlinkJar();
testJar.setProjectId(projectInfo.getId());
testJar.setName("testJar");
testJar.setJarId(jarId); // jarId为上面上传jar之后的返回

flinkJar = sdsClient.registerJar(testJar);
```

#### 更新 jar 包

```java
File file = new File("/Users/gqlxj1987/4paradigm/csp-flink-operator/target/flink-operator-basic-1.0-SNAPSHOT.jar");
try {
    jarId = sdsClient.uploadJar(175, new FileInputStream(file), "flink-operator-basic-1.0-SNAPSHOT.jar");
} catch (IOException e) {
    e.printStackTrace();
}


// 使用flinkJarId获取相关jar信息
FlinkJar testJar = sdsClient.getJarInfo(175, 173);
System.out.println(testJar.getName());
testJar.setJarId(jarId);

flinkJar = sdsClient.updateJar(testJar);
```

#### 注册 flink job template

```java
FlinkJobJar testJobJar = new FlinkJobJar();
testJobJar.setProjectId(projectInfo.getId());
testJobJar.setFlinkJarId(flinkJar.getId());
testJobJar.setEntryClass(""); // 功能入口
testJobJar.setName("flink template");
Map<String, String> parameterMap = new HashMap<>();
testJobJar.setParameters(parameterMap); // 参数

flinkJobJar = sdsClient.registerFlinkJobTemplate(testJobJar);
```

#### 启动 flink job

```java
FlinkJobDetail flinkJobDetail = new FlinkJobDetail();
flinkJobDetail.setJobJarId(flinkJobJar.getId());
flinkJobDetail.setProjectId(projectInfo.getId());
//  可以覆盖job template的参数
//   flinkJobDetail.setParameters(parameterMap); 

flinkJobDetail = sdsClient.startJob(flinkJobDetail);
```

### 数据加工部分

#### 注册二级表

```java
PrepareDataInfo testPrepareData = new PrepareDataInfo();
testPrepareData.setProjectId(103);
testPrepareData.setName("prepareSource");
testPrepareData.setIsServing(true); // 是否需要serving

prepareDataInfo = sdsClient.createPrepareDataInfo(testPrepareData);
System.out.println(prepareDataInfo.getId());
```

### 数据 serving 部分

#### 注册三级表

```java
ServingDataInfo testServing = new ServingDataInfo();
testServing.setProjectId(projectInfo.getId());
testServing.setName("testServing");

servingDataInfo = sdsClient.createServingDataInfo(testServing);
```

#### 注册三级表(包含 rtidb 配置)

```java
ServingDataInfo testServing = new ServingDataInfo();
testServing.setProjectId(103);
testServing.setName("testServing");
testServing.setPrepareDataId(667);

Config config = testServing.getConfig();
Rtidb rtidb = new Rtidb();
rtidb.setUseRtidb(true);
rtidb.setZkEndpoints("172.27.128.146:2181");
rtidb.setZkRootPath("/tradeup_rtidb");
rtidb.setRtidbTable("request_v2");
rtidb.setTimeColumn("xxx");
config.setRtidb(rtidb);

servingDataInfo = sdsClient.createServingDataInfo(testServing);
```

#### 注册三级表(包含流式 serving )

```java
ServingDataInfo testServing = new ServingDataInfo();
testServing.setProjectId(103);
testServing.setName("testServing");
testServing.setPrepareDataId(667);

Config config = testServing.getConfig();
StreamConfig streamConfig = new StreamConfig();
streamConfig.setUseStream(true);
streamConfig.setFlinkJobJarIds(Collections.singletonList(flinkJobJar.getId())); // 流式服务ID
config.setStreamConfig(streamConfig);

servingDataInfo = sdsClient.createServingDataInfo(testServing);
```

#### 删除三级表附带 rtidb 表的删除

```java
ServingDataInfo testServing = new ServingDataInfo();
testServing.setProjectId(103);
testServing.setId(320);

boolean deleted = sdsClient.deleteServingDataInfoWithConnector(testServing.getProjectId(), testServing.getId());
System.out.println(deleted);
```

#### 注册流式 mysql 属性并创建表

```java
// mysql
StreamConnector mysqlConnector = new StreamConnector();
mysqlConnector.setProjectId(projectInfo.getId());
mysqlConnector.setConnectorType(ConnectorType.JDBC);
mysqlConnector.setDataId(servingDataInfo.getId());
StreamConnector.Config config = mysqlConnector.getConfig();
JDBCSource jdbcSource = new JDBCSource();
jdbcSource.setHost("172.27.128.147");
jdbcSource.setPort(30178);
jdbcSource.setUsername("root");
jdbcSource.setPassword("root");
jdbcSource.setDbname("test");
config.setJdbcConfig(jdbcSource);

CreateStatement createStatement = new CreateStatement();
MysqlStatement mysqlStatement = new MysqlStatement();
mysqlStatement.setCreateSql("CREATE TABLE xxx");
createStatement.setMysqlStatement(mysqlStatement);
mysqlConnector.setCreateStatement(createStatement);

sdsClient.registerSinkConnector(mysqlConnector);
```

#### 注册流式 rtidb 属性并创建表

```java
// rtidb
StreamConnector rtidbConnector = new StreamConnector();
rtidbConnector.setProjectId(103);
rtidbConnector.setConnectorType(ConnectorType.RTIDB);
rtidbConnector.setDataId(316);
StreamConnector.Config config = rtidbConnector.getConfig();
RtidbConfig rtidbConfig = new RtidbConfig();
rtidbConfig.setZkEndpoints("172.27.128.146:2181");
rtidbConfig.setZkRootPath("/tradeup_rtidb");
rtidbConfig.setTableName("request_v1");
config.setRtidbConfig(rtidbConfig);

CreateStatement createStatement = new CreateStatement();
RtidbStatement rtidbStatement = new RtidbStatement();
rtidbStatement.setCreateSql("name : \"request_v1\"\n"
        + "ttl: 15768000\n"
        + "replica_num: 1\n"
        + "partition_num: 1\n"
        + "column_desc {\n"
        + "name : \"instance_id\"\n"
        + "type : \"string\"\n"
        + "is_ts_col : false\n"
        + "}\n"
        + "column_desc {\n"
        + "name : \"member_id\"\n"
        + "type : \"string\"\n"
        + "is_ts_col : false\n"
        + "}\n"
        + "column_desc {\n"
        + "name : \"currentTime\"\n"
        + "type : \"timestamp\"\n"
        + "is_ts_col : true\n"
        + "}");
createStatement.setRtidbStatement(rtidbStatement);
rtidbConnector.setCreateStatement(createStatement);

StreamConnector testConnector =  sdsClient.registerSinkConnector(rtidbConnector);
```

#### 注册流式 es 属性并创建表

```java
// es
StreamConnector esConnector = new StreamConnector();
esConnector.setProjectId(projectInfo.getId());
esConnector.setConnectorType(ConnectorType.ELASTICSEARCH);
esConnector.setDataId(servingDataInfo.getId());
StreamConnector.Config config = esConnector.getConfig();
EsConfig esConfig = new EsConfig();
esConfig.setUrl("http://xx");
esConfig.setType("xx");
esConfig.setIndex("xxx");
config.setEsConfig(esConfig);

CreateStatement createStatement = new CreateStatement();
EsStatement esStatement = new EsStatement();
esStatement.setUrl("http://xxx_create");
esStatement.setData("");
createStatement.setEsStatement(esStatement);
esConnector.setCreateStatement(createStatement);

sdsClient.registerSinkConnector(esConnector);
```

### 数据处理规则

#### 注册流式处理规则

```java
// stream dataMapping
DataMapping dataMapping = new DataMapping();
dataMapping.setProjectId(projectInfo.getId());
dataMapping.setName("stream测试");
dataMapping.setProcessType(MappingProcessType.FLINK); // flink处理模式
List<Integer> sourceDataIds = new ArrayList<>();
sourceDataIds.add(sourceDataInfo.getId());
dataMapping.setSourceDataIds(sourceDataIds);
dataMapping.setSourceDataType(DataType.SOURCE);
List<Integer> targetDataIds = new ArrayList<>();
targetDataIds.add(servingDataInfo.getId());
dataMapping.setTargetDataIds(targetDataIds);
dataMapping.setTargetDataType(DataType.SERVING);

dataMapping.setProcessRule(flinkJobJar.getId().toString());

streamMapping = sdsClient.createDataMapping(dataMapping);
```

#### 启动流式处理规则

```java
// start streamMapping job
sdsClient.startStreamDataMapping(projectInfo.getId(), streamMapping.getId());
```

### 数据接入

#### 注册一级表

```java
SourceDataInfo testSourceData = new SourceDataInfo();
testSourceData.setProjectId(103);
testSourceData.setName("testSource");
List<CommonSchemaTerm> groupSchema = new ArrayList<>();
CommonSchemaTerm term1 = new CommonSchemaTerm();
term1.setName("t1");
term1.setType("String");
groupSchema.add(term1);
testSourceData.setGroupSchema(groupSchema);

sourceDataInfo = sdsClient.createSourceDataInfo(testSourceData);
```

#### 选择 kafka 流式引入

```java
KafkaRequestDto testRequestDto = new KafkaRequestDto();
StreamJob streamJob = new StreamJob();
streamJob.setKafkaConnect("172.27.128.147:9092");
streamJob.setTopicName("test-action");
Schedule schedule = new Schedule();
schedule.setInterval(1);
schedule.setIntervalUnit(IntervalUnit.HOUR);
streamJob.setSchedule(schedule);
streamJob.setStorageFormat(StorageFormat.json);
streamJob.setJobType(JobType.STREAM_KAFKA_TO_HDFS);
Map configMap = new HashMap();
configMap.put("mem","512M");
configMap.put("cpu","1000m");
streamJob.setConfig(configMap);
testRequestDto.setStreamJob(streamJob);

kafkaRequestDto = sdsClient.createSourceKafkaImport(103, 151, testRequestDto);
```

#### 选择 jdbc 引入

```java
JdbcRequest jdbcRequest = new JdbcRequest();
JdbcSource jdbcSource = new JdbcSource();
jdbcSource.setHost("172.27.128.147");
jdbcSource.setPort(30178);
jdbcSource.setUsername("root");
jdbcSource.setPassword("root");
jdbcSource.setDbname("recom_free");
jdbcSource.setTable("user");
jdbcSource.setType("mysql");
jdbcSource.setImportingSQL("select * from user");
jdbcRequest.setDataSource(jdbcSource);

SourceDataTable sourceDataTable = sdsClient.createSourceJdbcImport(2, 229,jdbcRequest);
System.out.println(new Gson().toJson(sourceDataTable));
```

#### 获取一级表内 tables 信息

```java
Page<SourceDataTable, SourceDataTable> testPage = new Page<>();
SourceDataTable condition = new SourceDataTable();
condition.setProjectId(14);
condition.setSourceDataId(43);
testPage.setCondition(condition);
testPage.setPageNum(1);

Page<SourceDataTable, SourceDataTable> tablePages = sdsClient.getSourceTableList(14, 43, testPage);
System.out.println(tablePages.getRows().get(0));
```


### 离线 pipeline
主要参见API规范中的pipeline部分，
url前缀为类似`http://172.27.128.147:40121/automl-engine/200/`

#### 创建 pipeline

```
POST: /v2/engine/{enginekey}/pipeline/create
requestBody见pipline.json
```

#### 更新 pipeline

```
POST: /v2/engine/{enginekey}/pipeline/{pipelineTemplateId}/update
requestBody同上
```

#### 启动 pipeline (手动启动)

```
POST: /automl/v1/pipeline/{engineId}/{pipelineTemplateId}/start
requestBody为map<String, String>
```
可为本次任务进行配置的额外自定义参数，可覆盖template

#### 开启 pipeline (定时策略)

```
POST: /automl/v1/pipeline/{engineId}/{pipelineTemplateId}/start?once=false
```
