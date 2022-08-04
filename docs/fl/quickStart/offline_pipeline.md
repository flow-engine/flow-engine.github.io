## 开发或者修改一个离线pipeline
&emsp; &emsp;用离线pipeline实现一套从获取数据到执行自学习到部署自学习模型的流程

* 进入开发者模式，进入引擎->高级配置->系统命令，密码与当前日期相关
    ![open_debug](../assets/engine/open_debug.png)
* 进入pipeline编辑，离线编排->Pipeline编辑
    ![pipeline_runtime_list](../assets/offline/pipeline_runtime_list.png)
* 新增pipeline    
    ![create_pipeline](../assets/offline/create_pipeline.png)
* 编辑pipeline，然后将所需要的job拖入pipeline画布中，并定义job的启动顺序
    ![edit_pipeline](../assets/offline/edit_pipeline.png)
    ![edit_pipeline2](../assets/offline/edit_pipeline2.png)
* 我们发现这个pipeline离我们最终的流程目标还差最后一个部署模型到在线预估的环节,缺少的job我们通过自定义job来完成
* 打开离线任务模版页面,点击创建job,完成基本信息录入后，点击保存
![create_job](../assets/offline/create_job.png)    
* 进入job详情，编写具体代码逻辑 ([支持的job类型](../offline-pipeline/user_defined_param.md))
![edit_job](../assets/offline/edit_job.png)
![edit_job_basic](../assets/offline/edit_job_basic.png)
![edit_job_param](../assets/offline/edit_job_param.png)
![edit_job_code](../assets/offline/edit_job_code.png)
* 返回刚才的pipeline，将刚才创建好的job拖入到pipeline中，并链接好线保存
![edit_pipeline3](../assets/offline/edit_pipeline3.png)
* 点击运行pipeline
![start_pipeline](../assets/offline/start_pipeline.png)
* 等待成功后，查看运行结果
![view_pipeline](../assets/offline/view_pipeline.png)
    
    
           