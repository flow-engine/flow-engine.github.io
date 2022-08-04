### 0. 前言
flowengine 依赖的底层 AIOS 是 1.1.0 rc2，使用 AIOS 1.1.0 rc2 进行部署 k8s。**下面的部署步骤仅为参考，以AIOS提供的部署文档为准**。

### 1. 参考文档
http://prophet-devops.4pd.io:8086/sre-new-document/04-k8s%E9%9B%86%E7%BE%A4%E5%AE%89%E8%A3%85.html

### 2. 注意事项
> 部署时需要注意一点，所有部署包都应解压到一个base 目录下！

例如：/mnt/datadisk0/workspace_dir/， 部署包解压后的结构如下所示：

```
/mnt/datadisk0/workspace_dir/
├── aios-1.1.0          # aios
├── fl-1.6.2            # flowengine
├── ml-2.2.0            # hcml
├── patch               # aios rc2 patch
├── pws-4.1.0           # 算子包
└── studio-4.1.0        # studio
```
### 3. 获取部署包
AIOS 110: http://pkg-plus.4paradigm.com/prophet/ee/release-4.1.0/sage_aios-1.1.0-AIOS_rc2-full.tar 

MD5: http://pkg-plus.4paradigm.com/prophet/ee/release-4.1.0/sage_aios-1.1.0-AIOS_rc2-full.tar.md5 

内部部署：下载部署包
```
wget http://pkg-plus.4paradigm.com/prophet/ee/release-4.1.0/sage_aios-1.1.0-AIOS_rc2-full.tar
wget http://pkg-plus.4paradigm.com/prophet/ee/release-4.1.0/sage_aios-1.1.0-AIOS_rc2-full.tar.md5
md5sum sage_aios-1.1.0-AIOS_rc2-full.tar # 获取到 md5 和 sage_aios-1.1.0-AIOS_rc2-full.tar.md5 里的 md5 要一致，不一致说明包有损坏。
```
场内部署：上传部署包

解压部署包：
```
mkdir -p /mnt/datadisk0/workspace_dir/aios-1.1.0
# 将sage_aios-1.1.0-AIOS_rc2-full.tar 移到 aios-1.1.0 目录下，然后进到 aios-1.1.0 目录下解压
tar xvf sage_aios-1.1.0-AIOS_rc2-full.tar
```
### 4. 部署初始化
```
# 当前操作在 aios-1.1.0 下操作
bash package_dir/bin/build_env install first
```

执行结果验证
```
[172 /mnt/disk0/workspace_dir/aios-1.1.0]# bash package_dir/bin/build_env install first
 This is first time to install
 Entering installing stat!! You should finish it after deploy by:
     ==================================================================================================
     * /mnt/disk0/workspace_dir/aios-1.1.0/package_dir/bin/build_env finish
     ==================================================================================================
 put hadoop here:
 primary_hadoop
     ==================================================================================================
     * /mnt/disk0/workspace_dir/aios-1.1.0/package_dir/bin/../../config/hadoops/primary_hadoop.tar.gz
     ==================================================================================================
 second_hadoop
     ==================================================================================================
     * /mnt/disk0/workspace_dir/aios-1.1.0/package_dir/bin/../../config/hadoops/second_hadoop.tar.gz
     ==================================================================================================
 default hadoop is only primary_hadoop by cdh:
     ==================================================================================================
     * /mnt/disk0/workspace_dir/aios-1.1.0/package_dir/bin/../../config/hadoops/primary_hadoop.tar.gz
     ==================================================================================================
 run_status changes to offline_deploy
 package_dir/bin/build_env install success!
```
### 5. 配置部署参数
进入到 aios-1.1.0 的ansible_deploy_k8s目录下
```
cd ansible_deploy_k8s/
```
#### 5.1 配置 k8s 的 inventory/hosts
> 当前步骤的以下操作在ansible_deploy_k8s下执行

```
vim inventory/hosts
```
按照部署的机器分配进行配置，以多节点为例，配置后如下示例
```
root@cess2-k8s-app01 /m/d/w/a/ansible_deploy_k8s# cat inventory/hosts
# 主机清单文件
 
# [all] 段填写规则：
# 1. IP 部署：主机名与 IP
#    例：172.27.140.213 ansible_host=172.27.140.213
# 2. hostname 部署：主机名、IP 与 hostname，hostname 与主机的映射必须存在于 /etc/hosts 中
#    例：k8s01 ansible_host=172.27.140.213 node_hostname=k8s01
# 3. 第一列为设置的 ansible 主机名，后续将作为 {{ inventory_hostname }} 内部变量使用
 
# all 中需填写所有用到的机器
[all]
172.27.128.75  ansible_host=172.27.128.75
172.27.128.133 ansible_host=172.27.128.133
172.27.128.81  ansible_host=172.27.128.81
172.27.128.59  ansible_host=172.27.128.59
172.27.128.105 ansible_host=172.27.128.105
172.27.128.98  ansible_host=172.27.128.98
 
[etcd]
172.27.128.75
172.27.128.133
172.27.128.81
 
[k8s_master]
172.27.128.75
172.27.128.133
172.27.128.81
 
[k8s_node]
172.27.128.59
172.27.128.105
172.27.128.98
 
[k8s_cluster:children]
etcd
k8s_master
k8s_node
```
> 【重要】下面是部署机器的具体解释，请仔细阅读

#### 5.1.1 多节点分布式 - master/node独立 - 生产环境
```
#分布式部署情况下，一般k8s master + etcd会单独部署，k8s node作为工作节点会单独部署，
#详情请参考文档：【部署文档】- 部署架构&资源规划 和相关视频，如果想详细了解请联系SRE团队
[all]
k8s-master01 ansible_host=172.21.0.2
k8s-master02 ansible_host=172.21.0.3
k8s-master03 ansible_host=172.21.0.4
k8s-node01 ansible_host=172.21.0.5
k8s-node02 ansible_host=172.21.0.6
 
[etcd]  #etcd节点hostsname list，非特殊条件下etcd会和k8s master部署在同一节点，但是磁盘会各自独立使用
k8s-master01
k8s-master02
k8s-master03
 
[k8s_master]  #k8s master（一组应用: kube-scheduler\kube-controller-manager\kube-apiserver等）用于k8s集群管理
k8s-master01
k8s-master02
k8s-master03
 
[k8s_node]  #k8s node，k8s工作节点主要部署docker和相应k8s组件
k8s-node01
k8s-node02
 
[k8s_cluster:children]
etcd
k8s_master
k8s_node
```
#### 5.1.2 单节点 master/node混合部署 - 临时性非生产环境
```
#单点部署：一般用于临时性的功能自测，部署功能测试等，不考虑可用性和扩展性，可随时销毁
#详情请参考文档：【部署文档】- 部署架构&资源规划 和相关视频，如果想详细了解请联系SRE团队
[all]
k8s01 ansible_host=172.21.0.2
 
[etcd]  #etcd节点hostsname list，非特殊条件下etcd会和k8s master部署在同一节点，但是磁盘会各自独立使用
k8s01
 
[k8s_master]  #k8s master（一组应用: kube-scheduler\kube-controller-manager\kube-apiserver等）用于k8s集群管理
k8s01
 
[k8s_node]  #k8s node，k8s工作节点主要部署docker和相应k8s组件
k8s01
 
[k8s_cluster:children]
etcd
k8s_master
k8s_node
```
#### 5.2 配置 k8s 的 inventory/group_vars/all/all.yml
当前步骤的以下操作在ansible_deploy_k8s下执行
```
vim inventory/group_vars/all/all.yml
```
需要修改的地方如下：
```
# k8s 各组件数据目录  
K8S_DIR: "/mnt/datadisk0/data/k8s" 
K8S_SSL_DIR: "{{ K8S_DIR }}/etc/kubernetes/ssl"
 
# docker 数据目录
DOCKER_DIR: "/mnt/datadisk1/data/docker"   
 
# etcd 数据目录
ETCD_DIR: "/mnt/datadisk1/data/etcd"         
ETCD_SSL_DIR: "{{ ETCD_DIR }}/etc/kubernetes/ssl"
```

> 【重要】下面是部署目录的具体解释，请仔细阅读

```
#1、如果是重要环境：注重性能和集群可用性，需要重点关注此部分配置。 资源规划和性能相关详情请参考文档：
#  【部署文档】- 部署架构&资源规划和相关视频，如果想详细了解请联系SRE团队
#2、如果仅是临时部署验证，可以忽略此部分配置。
#3、各种情况下:
#   a、master/node分离的分布式部署，各节点需要两块数据盘，假设挂载路径分别为/mnt/disk0、/mnt/disk1 (具体名称根据实际情况设定)
#   b、单点的master/node混合部署，建议使用三块数据盘，假设挂载路径分别为/mnt/disk0、/mnt/disk1、/mnt/disk2 （具体名称根据实际情况设定）
#   c、只有一块盘或者没有数据盘，假设一块盘挂载路径为：/mnt/disk0 （具体名称根据实际情况设定）
#情况a：分布式部署，两块数据盘，挂载路径/mnt/disk0 /mnt/disk1
# k8s 各组件数据目录
K8S_DIR: "/mnt/disk0/data/k8s"
K8S_SSL_DIR: "{{ K8S_DIR }}/etc/kubernetes/ssl"
# docker 数据目录
DOCKER_DIR: "/mnt/disk1/data/docker"
# etcd 数据目录
ETCD_DIR: "/mnt/disk1/data/etcd"
ETCD_SSL_DIR: "{{ ETCD_DIR }}/etc/kubernetes/ssl"
 
 
#情况b：独立部署，三块数据盘，挂载路径/mnt/disk0 /mnt/disk1 /mnt/disk2
# k8s 各组件数据目录
K8S_DIR: "/mnt/disk0/data/k8s"
K8S_SSL_DIR: "{{ K8S_DIR }}/etc/kubernetes/ssl"
# docker 数据目录
DOCKER_DIR: "/mnt/disk1/data/docker"
# etcd 数据目录
ETCD_DIR: "/mnt/disk2/data/etcd"
ETCD_SSL_DIR: "{{ ETCD_DIR }}/etc/kubernetes/ssl"
 
 
#情况c：分布式 or 独立部署，只有一块数据盘或者没有数据盘，挂载路径/mnt/disk0，则无需修改配置默认即可
# k8s 各组件数据目录
K8S_DIR: "/mnt/disk0/data/k8s"
K8S_SSL_DIR: "{{ K8S_DIR }}/etc/kubernetes/ssl"
# docker 数据目录
DOCKER_DIR: "/mnt/disk0/data/docker"
# etcd 数据目录
ETCD_DIR: "{{ K8S_DIR }}"
ETCD_SSL_DIR: "{{ ETCD_DIR }}/etc/kubernetes/ssl"
```

### 6. 部署步骤
上述 hosts 和 all.yml 配置完成后
```
#整合命令：直接执行即可将k8s集群部署完成
ansible-playbook playbooks/site.yml
不出问题的话，部署成功，无 failed 出现，输出结果如下

2021-08-08 11:58:11,905 p=19752 u=root n=ansible | PLAY RECAP ***********************************************************************************
2021-08-08 11:58:11,905 p=19752 u=root n=ansible | 172.27.128.105              : ok=110  changed=76   unreachable=0    failed=0    skipped=18   rescued=0    ignored=0
2021-08-08 11:58:11,905 p=19752 u=root n=ansible | 172.27.128.133              : ok=97   changed=56   unreachable=0    failed=0    skipped=10   rescued=0    ignored=0
2021-08-08 11:58:11,905 p=19752 u=root n=ansible | 172.27.128.59               : ok=122  changed=90   unreachable=0    failed=0    skipped=18   rescued=0    ignored=0
2021-08-08 11:58:11,905 p=19752 u=root n=ansible | 172.27.128.75               : ok=127  changed=81   unreachable=0    failed=0    skipped=10   rescued=0    ignored=0
2021-08-08 11:58:11,905 p=19752 u=root n=ansible | 172.27.128.81               : ok=97   changed=53   unreachable=0    failed=0    skipped=10   rescued=0    ignored=0
2021-08-08 11:58:11,906 p=19752 u=root n=ansible | 172.27.128.98               : ok=110  changed=75   unreachable=0    failed=0    skipped=18   rescued=0    ignored=0
```
部署日志可以在 tmp/ansible.log 里查看
```
[172 /mnt/disk0/workspace_dir/aios-1.1.0/ansible_deploy_k8s]# ll tmp/ | grep ansible
-rw-r--r-- 1 root 80K 8月  11 15:30 ansible.log
```
playbooks/site.yml 是一个整合的命令
```
[172 /mnt/disk0/workspace_dir/aios-1.1.0/ansible_deploy_k8s]# cat playbooks/site.yml
---
- include: 01.prepare.yml
- include: 02.download.yml
- include: 03.cert.yml
- include: 04.etcd.yml
- include: 05.kubectl.yml
- include: 06.kube-nginx.yml
- include: 07.kube-master.yml
- include: 08.flannel.yml
- include: 09.docker.yml
- include: 10.kube-node.yml
- include: 11.coredns.yml
- include: 12.dashboard.yml
- include: 13.end.yml
```
为了调试和排错，可以使用拆分的命令进行各个环节的独立部署：
```
ansible-playbook playbooks/01.prepare.yml        #环境初始化（此步后续会迁移至部署标准化工具中）
ansible-playbook playbooks/02.download.yml       #分发k8s安装文件至所有节点的相应路径
ansible-playbook playbooks/03.cert.yml           #生成ca证书，并分发至所有节点
ansible-playbook playbooks/04.etcd.yml           #部署etcd集群 or 单点服务
ansible-playbook playbooks/05.kubectl.yml        #分发并配置kubectl命令
ansible-playbook playbooks/06.kube-nginx.yml     #所有节点部署kube-nginx
ansible-playbook playbooks/07.kube-master.yml    #部署k8s master相关服务：apiserver、controller-manager、scheduler
ansible-playbook playbooks/08.flannel.yml        #所有节点部署flannel服务
ansible-playbook playbooks/09.docker.yml         #node节点部署docker服务
ansible-playbook playbooks/10.kube-node.yml      #部署k8s node相关服务：kubelet、kube-proxy
ansible-playbook playbooks/11.coredns.yml        #在k8s集群内部署DNS服务
ansible-playbook playbooks/12.dashboard.yml      #部署k8s dashboard服务，此步可选，部分产品有依赖，非必要不建议部署
ansible-playbook playbooks/13.end.yml            #Approve csr
```

### 7. 部署后验证

部署完成后，可以通过获取 namespace 和 pod 的状态来验证 k8s 是否部署成功
```
[172 /mnt/disk0/workspace_dir/aios-1.1.0/ansible_deploy_k8s]# kubectl get ns
NAME                   STATUS   AGE
default                Active   22m
kube-node-lease        Active   22m
kube-public            Active   22m
kube-system            Active   22m
kubernetes-dashboard   Active   20m
[172 /mnt/disk0/workspace_dir/aios-1.1.0/ansible_deploy_k8s]# kubectl get pod --all-namespaces
NAMESPACE     NAME                                         READY   STATUS    RESTARTS   AGE
kube-system   coredns-59845f77f8-5n7rt                     1/1     Running   0          21m
kube-system   dashboard-metrics-scraper-7b8b58dc8b-qf5h7   1/1     Running   0          20m
kube-system   kubernetes-dashboard-7c94d49df-hk88m         1/1     Running   0          20m
```
