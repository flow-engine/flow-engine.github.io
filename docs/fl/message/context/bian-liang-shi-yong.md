## context使用

使用context有两种方式，第一种是在离线任务里引用，第二种是用sdk获取

* 在离线任务里使用比较方便，直接用${}就能获取，比较方便，实例如图：![](/images/lixian/context-product1.png)![](/images/lixian/context-consume2.png)![](/images/lixian/context-consume1.png)

* 利用sdk获取context

* ```
  mvn添加依赖包
  <dependency>
       <groupId>com._4paradigm.prophet</groupId>
       <artifactId>flowengine-sdk</artifactId>
       <version>0.2-SNAPSHOT</version>
  </dependency>

  getContext(String contextKey, String contextValue) {
     ContextInfoClient contextInfoClient = new ContextInfoClient(flowEngineClient);

     ContextInfo contextInfo = contextInfoClient.getContextInfo(contextKey);
   }
  ```



