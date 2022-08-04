## context产生

context的产生分为两种，第一种是在引擎没有创建之前声明，即在asol里提前声明好，第二种是通过sdk动态产生

* 在组件里声明context![](/images/lixian/context-product2.png)![](/images/lixian/context-product1.png)

* 通过sdk动态产生

```
mvn添加依赖包
<dependency>
     <groupId>com._4paradigm.prophet</groupId>
     <artifactId>flowengine-sdk</artifactId>
     <version>0.2-SNAPSHOT</version>
</dependency>
生成context代码例子
void updateContext(String contextKey, String contextValue) {
   ContextInfoClient contextInfoClient = new ContextInfoClient(flowEngineClient);
   ContextInfo contextInfo = new ContextInfo();
   contextInfo.setName(contextKey);
   contextInfo.setKey(contextKey);
   contextInfo.setValue(contextValue);
   contextInfoClient.updateContextInfo(contextInfo);
}
```



