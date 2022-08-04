## 产生消息

产生的消息分为两种，一种是来源离线任务，一种是来源外部服务的sdk调用

* 来源是离线任务和消息声明里离线任务部分相同，不做过多说明
* 来源是sdk的，以自学习组件发送自学习完成消息为例
* ```
  mvn添加依赖包
  <dependency>
       <groupId>com._4paradigm.prophet</groupId>
       <artifactId>flowengine-sdk</artifactId>
       <version>0.2-SNAPSHOT</version>
  </dependency>
  发送代码实例
  public void sendMsg(String topic, String engineKey, String flowEngineUrl, String accessKey, Integer workspaceId, String msg) throws Exception {

     FlowEngineClient flowEngineClient = new FlowEngineClient.Builder("self-learner", engineKey, flowEngineUrl, accessKey, workspaceId).withSyncHttpOperator().build();
     MessageInfoClient messageInfoClient = new MessageInfoClient(flowEngineClient);

     log.info(msg);
     messageInfoClient.producerMessageInfo(topic, msg);
  }
  ```





