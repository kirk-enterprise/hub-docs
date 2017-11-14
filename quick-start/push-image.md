# 上传本地镜像到仓库

本文介绍如何将本地镜像推送到七牛镜像中心，以便在七牛容器云平台部署容器或集群。

## 1. 查看镜像列表

```
$ docker images
REPOSITORY                        TAG        IMAGE ID        CREATED        SIZE
nginx                             latest     40960efd7b8f    9 days ago     108MB
redis                             latest     8f2e175b3bd1    9 days ago     107MB
```
## 2. 登录七牛镜像中心服务器

```
docker login -u {你的七牛账号} -p {密码} reg.qiniu.com
```
返回「**Login Succeded**」即为登录成功

## 3. 为本地镜像标记tag

```
docker tag {镜像名或id} reg.qiniu.com/{命名空间}/{镜像名}:{标签}
```
例如：

```
docker tag nginx:latest reg.qiniu.com/mynamespace/mynginx:mytag
```

* 推送至不存在的镜像仓库时，自动创建镜像仓库并保存新推送的镜像版本；
* 推送至已存在的镜像仓库时，在该镜像仓库中保存新推送的版本，当版本号相同时覆盖原有镜像。

## 4. 推送镜像进入七牛镜像中心

```
docker push reg.qiniu.com/{命名空间}/{镜像名}:{标签}
```
例如：

```
docker push reg.qiniu.com/mynamespace/mynginx:mytag
```
