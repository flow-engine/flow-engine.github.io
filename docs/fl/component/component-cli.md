# SDK/Cli

#### FlowEngine-python-sdk/cli 介绍及搭建文档请参见[FlowEngine-python-sdk/cli]()

## 自定义开发
用户可以借助默认的 SDK/Cli 为每个组件自定义开发，从而拓展功能。

自定义开发参考如下步骤：

* 代码书写
* 代码文件上传
* 代码打包

### 代码书写
#### 自定义 Service 需要继承相应的 Service
~~~py
# customer_sci_service
from automl import ScInstanceService
class CustomerSciService(ScInstanceService):
	def __init__(self):
	    super().__init__()
	
	 # post request	    
    def post_request(self, value):
        url = '{}/data'.format(self.url)
        body = {'body': value}
        resp = self.client.request.post(url, json=body, headers=self.headers)
        resp_data = resp.json()
        print(resp_data)

    # get request
    def get_request(self):
        url = '{}/data'.format(self.url)
        resp = self.client.request.get(url, headers=self.headers)
        print(resp.json())
~~~
注意：通过继承不同的 Service 可以获取相应 url 和 header 等信息。

#### 自定义 Cli
自定义 Cli 需要：    

*  函数：cli\_a\_b 会自动生成命令：ml_cli a b  
*  函数名不能和 flowengine 自带命令重名
*  help 函数必须为：cli\_组件实例名\_help 函数
*  使用 args 装饰器

~~~py
# customer_sci_cli.py
@args('v2', metavar='<VALUE>', type=int, help='value to guess')
@args('v1', metavar='<VALUE>', type=int, help='value to guess')
def cli_post_request(args):
    """Demo: post request"""
    
	 v1 = args.v1
	 v2 = args.v2
    cs = CustomerSciService()
    data = cs.post_request(v1)
    print('v1:', v1)
    print('v2:', v2)
~~~

写完之后就可以立即生成 cli，可以分别从远端和组件实例本地调用。假设组件实例 key 为 demo，则：

~~~shell
# from remote
>>>ml_cli demo post request 8 88
v1:8
v2:88
>>>
# from local
>>>ml_cli post request 6 66
v1:6
v2:66
~~~

### 代码文件上传

* 将自定义的 SDK 文件上传到 py_sdk
* 将自定义的 Cli 文件上传到 py_cli

### 代码打包
书写 MakeFile 将项目中的 py_sdk 移到 /app/py\_sdk ,   
将项目中的 py_cli 复制到 /app/py\_cli 。
