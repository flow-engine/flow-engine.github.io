# 开发自定义函数

> 请先阅读[基本流程](./basic-operation.md)部分。

## 准备工作

### 引用 fl-pipeline-core jar 依赖

**请将 scope 设为 provided, 框架运行时会自带**

```xml
<dependency>
    <groupId>com._4paradigm.flowengine</groupId>
    <artifactId>fl-pipeline-core</artifactId>
    <scope>provided</scope>
    <version>0.0.2</version>
</dependency>
```
> 托管于第四范式 nexus 仓库，私有化场景请联系客户经理。

### 第三方依赖管理

日志框架请使用 slf4j-api，实现类（logback/log4j等）请将 scope 设为 `provided`，或仅在单元测试中使用（scope 设为 `test`）。

其他依赖，需要通过构建工具(maven/gradle等)收集，注入到 Pipeline 运行时的 classpath，参考[Pipeline 运行时](./pipeline-runtime.md)。

## 开发逻辑

开发者需要基于 FLFunction 基类去实现。

必须实现`public Object run(PipelineContext context, Object... args)`方法，例如：

```java
// context 为运行时接收的 pipeline 上下文（接口见下文），args 为执行时预期的参数列表（需自行转换类型）

@Override
public Object run(PipelineContext context, Object... args) {
    log.info("start to run function {}, input args: {}", this.getKey(), args);
    return null;
}
```

可选实现 `public void onInit(Map<String, Object> initConfig)` 和 `public void onDestroy()` 方法：

```java
// onInit 初始化逻辑，在 function 加载部署时会被框架调用，一般用于初始化常驻内存的资源
// 如初始化 ES client

@Override
public void onInit(Map<String, Object> initConfig) {
    this.esClient = new ESClient((String)initConfig.get("esHosts"));
}
 
// onDestroy 销毁逻辑，在 function 销毁时会被框架调用，一般用于资源清理

@Override
public void onDestroy() {
    this.esClient.destroy()
}
```

## FLFunction 自身接口

`FLFunction` 基类提供了一些基础方法，可以通过 `this` 进行调用：

`String getKey()`: 获取函数 key（同一个Pipeline 范围内唯一）

`String getOutputTag`: 获取函数返回标记

`Map<String, String> getLabels`: 获取函数 label

`Map<String, Object> getInitConfig;`: 获取函数的初始化配置，初始化配置可在编排 pipeline 时设置，一般用于存放 onInit 方法中使用的配置

`private Map<String, Object> getRuntimeConfig;`: 获取函数的运行时配置，运行时配置可在编排 pipeline 时配置，一般用于存放 run 方法执行时需要获取的数据/配置

## PipelineContext 接口

`Map<String, Object> getRequest()`

获取当前 pipeline 的入口请求

`String getTraceId()`

获取当次请求的 traceId

`void log(String functionKey, String logTag, Object data)`

将 `data` 通过 logger `fl_pipeline_event_logger` 记录日志，Pipeline Runtime 默认会将日志落盘，并输出到 kafka，topic 可配置。

日志输出结构为 JSON，样例：

```
{
    "pipeline_key": "",
    "pipeline_version": "",
    "event": "function_log",
    "trace_id": "dd0011fcb9b33d58",
    "timestamp": 12345678567,
    "function_key": "functionKey",
    "tag": "your logTag",
    "data": <data object json>
}
```

## 异常处理

Pipeline 在执行 Function 时默认不对异常做处理（意味着 pipeline 执行失败），有两种方式能处理异常：

1. 在 run 方法中捕获可能的异常并执行兜底逻辑，保证 function 的鲁棒性；

2. 有时候，function 只希望完成核心逻辑，异常处理逻辑取决于实际使用的场景，此时可以在 pipeline 编排时，动态配置对应的 onError hook function，详情可参考 pipeline 构建相关章节。

另外，function 可能希望将某些错误显式地抛出，并在 pipeline 执行过程中返回对应的错误码，此时可以将异常包装成 `com._4paradigm.flowengine.pipeline.core.FunctionExecutionException`，如：

```java
int errorCode = 2001;

try {
    ...
} catch(IOException e) {
    throw FunctionExecutionException.builder()
                                    .code(errorCode)
                                    .info("message info")
                                    .httpStatus(500)
                                    .cause(e).build();
}
```

## 创建 function template

在 FlowEngine 方案或引擎的『在线编排』中，可以[创建 function template](./basic-operation.md)，将 function 注册到 FlowEngine 中。

Function template 使用 key、group、version 三元组作为唯一索引，开发者应谨慎选择创建新的 function template 或升级其版本。
