## Job 的输入

说明：job 的输入为 job 的环境变量，job 逻辑内可以通过${xxxx}引用

job 的输入类型，job 的输入类型有一下三种：

* 自定义参数![](/images/lixian/job-input-defind1.png)

* 系统参数![](/images/lixian/job-input-defind3.png)

* 引擎context![](/images/lixian/job-input-defind2.png)

## Job 的输出

说明：不同类型的 job 定义输出的方式稍有不同，但是底层逻辑是一样的，以输出`hello world`为例

* java，直接在execute返回即可![](/images/lixian/job-output-defind1.png)

* python3![](/images/lixian/job-output-defind4.png)

* shell![](/images/lixian/job-output-defind3.png)

* dag![](/images/lixian/job-output-defind2.png)



