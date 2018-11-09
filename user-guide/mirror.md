# 3.5 镜像加速
支持三种镜像来源的镜像加速，包括Docker Hub、GCR、Quay.

## 3.5.1 配置加速地址

镜像加速地址：<br>
Docker Hub：`https://reg-mirror.qiniu.com`<br>
GCR：`https://gcr-mirror.qiniu.com`<br>
Quay：`https://quay-mirror.qiniu.com`<br>

### Linux
执行以下命令: `curl -sSL http://oyh1cogl9.bkt.clouddn.com/setmirror.sh | sh -s <镜像加速地址>`，将镜像加速地址加入到你的Docker配置文件/etc/docker/daemon.json中。适用于Ubuntu / Debian / CentOS。

### Windows
1. 右键点击Docker图标，选择Docker Daemon标签页
2. 修改json，把`<镜像加速地址>`加入到registry-mirrors中
3. 点击Apply使设置生效

### Mac
1. 右键点击Docker图标，选择Preferences
2. 点击Daemon选项，在Registry mirrors下添加以下`<镜像加速地址>`
3. 点击Apply & Restart使设置生效