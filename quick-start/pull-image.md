# 拉取仓库镜像到本地

本文介绍如何从七牛镜像中心拉取镜像到本地，以便在本地使用七牛镜像中心提供的镜像。


## 1. 登录七牛镜像中心服务器 {docsify-ignore}

```
docker login -u {你的七牛账号} -p {密码} reg.qiniu.com
```
返回「**Login Succeded**」即为登录成功

!> **注意：**如果需要拉取的是公共镜像，则无需登录。如果需要拉取的是你自己的私有镜像，则需要使用自己的账号和密码登录。

## 2. 拉取镜像到本地 {docsify-ignore}

```
docker pull reg.qiniu.com/{命名空间}/{镜像名}:{标签}
```
例如：

```
docker pull reg.qiniu.com/mynamespace/mynginx:mytag
```

## 3. 查看镜像列表 {docsify-ignore}

```
$ docker images
REPOSITORY                            TAG        IMAGE ID        CREATED        SIZE
reg.qiniu.com/mynamespace/mynginx     latest     40960efd7b8f    9 days ago     108MB
```
本地镜像列表中会显示新拉取的镜像。
