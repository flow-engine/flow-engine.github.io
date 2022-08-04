# Pipeline 运行时

> 请先阅读[基本流程](./basic-operation.md)部分。

通过『在线编排』构建完 pipeline 后，可以进行发布，发布前请确保已经[添加对应的组件](./basic-operation.md#添加组件以开启在线编排功能)。

Pipeline 运行时（Pipeline Runtime，下文也称 runtime） 以 FlowEngine 组件形式存在，相关的基本操作可参考[todo 组件运行管理](link)。

## 运行原理

Pipeline Runtime 是一个 SpringBoot 服务，所以一些常规的配置如日志级别等可以参考 SpringBoot 的最佳实践。

### Pipeline 加载

Pipeline 发布后，会通过 FlowEngine 提交给对应的 runtime，runtime 会依次加载 function 的 jar 文件，并执行 onInit 方法，装配 onCondition, onStart 等 hook。

加载完成后，pipeline 会常驻内存中。

### 第三方依赖

runtime 有自身的 classpath，其中包含了 `fl-pipeline-core`。
Function 可能有自身的第三方依赖，此时需要将 jar 文件放到 runtime 运行环境的目录下（目前是镜像中的 `/app/extra-libs` 目录），这部分 jar 文件会放到 classpath 最前面。

在实际运行中，runtime 通过 initContainer 机制将额外的第三方文件复制到 `/app/extra-libs` 中，如需修改或添加第三方依赖，可以通过此方式进行。

组件中 yaml 增加 initContainer，如（init 镜像中 /extra-libs 存放了第三方 jar 文件）：

```yaml
...
                spec:
                  initContainers:
                  - name: copy-extra-libs
                    image: <your image tag>
                    command:
                    - sh
                    - -c
                    - ls /extra-libs && cp /extra-libs/* /tmp/extra-libs/
                    resources:
                      limits:
                        memory: 512Mi
                        cpu: 500m
                    volumeMounts:
                    - name: extra-libs
                      mountPath: /tmp/extra-libs
                  containers:
                  - image: ${global.registry}/config-center:fl-pipeline-runtime
                    ...
                    volumeMounts:
                    - mountPath: /app/extra-libs
                      name: extra-libs
                    ...
                  volumes:
                  - name: extra-libs
```

### Pipeline 执行

接收到请求后，runtime 会将请求作为输入，开始执行整个 pipeline，得到结果后返回。

### Pipeline 更新机制

Runtime 在接收到 pipeline 更新操作后，会立即开始初始化新版本的 pipeline，初始化完成后会将内存中已存在的旧版本 pipeline 下线并**同时**上线新版本 pipeline。

**如果新版本初始化失败，那么线上执行的将依旧是旧版本 pipeline。**

### 开启 tracing 功能

1.6.0.1 之后，pipeline runtime 集成了 Jaeger Tracing，通过以下方式开启。

修改组件 yaml，增加环境变量：

```
......
                  containers:
                  - env:
                    - name: JAEGER_SAMPLER_TYPE
                      value: const
                    - name: JAEGER_SAMPLER_PARAM
                      value: "1"
                    - name: JAEGER_AGENT_HOST
                      value: jaeger-agent.prophet
                    - name: JAEGER_AGENT_PORT
                      value: "6831"
                      ......
```

其中，修改 JAEGER_SAMPLER_PARAM 为小数，可以控制采样比例，1 表示全部采样。

保存生效后，通过 url `/jaeger/` 访问 jaeger 统计页面，Service 选择 fl-pipeline-runtime 即可查询 trace。