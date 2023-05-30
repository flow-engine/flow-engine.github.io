layout: default
title: faq
----------

# 如何利用api操纵离线pipeline

对于不想通过界面操作，而是将离线pipeline集成到应用系统中的需求，可以使用api来操纵。

## 相关API参考：

### 01、获取url接口

   1) URL
    fl_url + "/engine-manager/v1/k8s/info/?engineKey=" + engineKey
   2) method: get
   3) header: {"X-FlowEngine-UserId":1}
   4) 返回
     返回里面有个url，例子："url": "/engine/15/cess-data-3"
   5）说明
    engineUrl = url，后续接口会用到

### 02、获取engineId接口
   1) URL
    fl_url + engineUrl + "/automl/v1/system/getParam?engineKey=" + engineKey
   2) method: get
   3) header: {"X-FlowEngine-UserId":1}
   4) 返回
    返回里面有个engineId，例子："engineId": 6

### 03、添加pipeline
   1）URL
   fl_url + engineUrl + "/automl/v1/pipeline/template/" + engineId + "/create?engineKey=" + engineKey
   2）method: post
   3) header: {"X-FlowEngine-UserId":1}
   4) request_body（注：可以修改参数里的name、describe、pipelineKey）
   ```json
   {"id":19,"engineTemplateId":23,"data":{"onPreStart":null,"onComplete":null,"onTimeout":null,"onError":null,"onCondition":null,"id":"b49a3391-daaf-11ed-840b-eb96ba015c6a","name":"test1","describe":"test1","nodes":[{"onPreStart":null,"onComplete":null,"onTimeout":null,"onError":null,"onCondition":null,"id":null,"runId":null,"name":"start","engineTemplateId":null,"indexType":"DAG","indexSource":null,"params":null,"outputConfig":null,"executionConfig":null,"viewConfig":null,"system":null,"systemTab":null,"parentJobTemplateId":null,"desc":null,"type":"START","pipelineKey":null,"sensorJobConfig":null,"source":null,"componentKey":null,"componentJobKey":null,"workerName":null,"nodeId":"start_node","title":"开始","status":"INITIALIZED","inputSlots":null,"outputSlots":[{"elementType":"TABLE","id":"c4048285-fe2d-47c6-a2b0-bef7e0dde6bf"}],"isStartNode":false,"resourceDependency":null}],"edges":[],"status":"init","layout":"","executionConfig":{"runMode":"SINGLE","cronExpression":null,"interval":0,"intervalUnit":"MINUTE","isManual":null,"trigger":"ModelTrainFinishEvent","triggerList":null,"retryCount":null,"delayTime":null,"delayTimeUnit":null,"timeOut":null,"timeOutUnit":null,"retryGapTime":null,"retryGapTimeUnit":null,"startAt":null},"openMsgTopicConfig":{},"pipelineParams":null},"jobKey":null,"tiggerKey":null,"historyList":null,"createTime":1681468370000,"pipelineKey":"test1"}
   ```
   5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```
### 04、文件上传（用于分布式运行）
1) URL
fl_url  + engineUrl + "/automl/v1/template/uploadJobFileParam/1"
2) method
post
3) header: {"X-FlowEngine-UserId":1}
4) 参数
file，文件
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```
### 05、pipeline列表
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/" + engineId + "/list?engineKey=" + engineKey
2) 方法
get
3) header: {"X-FlowEngine-UserId":1}
4) 参数
无
5) 返回

### 06、某个pipeline的详情页
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/template/" + engineId + "/" + pipelineId + "/get?engineKey=" + engineKey
2) method
get
3) header: {"X-FlowEngine-UserId":1}
4) 参数
   无
5) 返回

### 07、修改pipeline
1) URL
fl_url + engineUrl + "/automl/v1/pipeline/template/" + engineId + "/update?engineKey=" + engineKey
2) method
put
3) header: {"X-FlowEngine-UserId":1}
4) 参数
修改 “某个pipeline的详情页” 返回的json
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```
### 08、开启或者关闭crontab按钮
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/" + engineId + "/" + pipelineId + "/start?once=false&engineKey=" + engineKey
   fl_url + engineUrl + "/automl/v1/pipeline/" + engineId + "/" + pipelineId + "/stop?engineKey=" + engineKey
2) method
post
3) header: {"X-FlowEngine-UserId":1}
4) 参数
"{"data":" "}"
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```

### 09、启动pipeline
1) URL
fl_url + engineUrl + "/automl/v1/pipeline/" + engineId + "/" + pipelineId + "/start?engineKey=" + engineKey
2) method
post
3) header: {"X-FlowEngine-UserId":1}
4) 参数
```json 
{
"nodeId01": {
"key": "value"
},
"nodeId02": {
"key": "value"
}
}
```
nodeId01、nodeId02，在 “某个pipeline的详情页” 返回的json里获得
5) 返回
```json 
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```

### 10、查询pipeline运行历史记录
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/" + pipelineId + "/historyList?page=" + page + "&size=" + size + "&engineId=" + engineId + "&engineKey=" + engineKey
2) method
get
3) header: {"X-FlowEngine-UserId":1}
4) 参数
无
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```

### 11、停止某个pipeline任务
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/" + pipelineRunId + "/stopHistory?engineId=" + engineId + "&engineKey=" + engineKey
pipelineRunId，pipeline某个任务的Id
2) method
delete
3) header: {"X-FlowEngine-UserId":1}
4) 参数
无
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```

### 12、重启某个pipeline
1) URL
   fl_url + engineUrl + "/automl/v1/pipeline/" + pipelineRunId + "/resumeHistory?engineId=" + engineId + "&engineKey=" + engineKey
pipelineRunId，pipeline某个任务的Id
2) method
post
3) header: {"X-FlowEngine-UserId":1}
4) 参数
无
5) 返回
```json
{
"status": 0,
"msg": "后台处理正常",
"data":{....}
}
```