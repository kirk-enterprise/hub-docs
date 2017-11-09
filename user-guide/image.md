# 3.3 镜像管理

## 上传镜像
1. 手动操作 Docker 客户端登录镜像仓库地址:reg-staging.qiniu.io
docker login reg.qiniu.io -u <用户名> -p <密码>
2. 推送镜像前需要将 Docker 镜像重设置为正确的镜像仓库资源标识, 例如:
docker tag helloworld-go:demo reg.qiniu.io/<空间名>/helloworld-go:demo
3. 执行 docker push 推送镜像, 例如:
docker push reg.qiniu.io/<空间名>/helloworld-go:demo

## 拉取镜像
1. 手动操作 Docker 客户端登录镜像仓库地址:reg.qiniu.io
docker login reg.qiniu.io -u <用户名> -p <密码>
2. 执行 docker pull 拉取镜像, 例如:
docker pull reg.qiniu.io/<空间名>/helloworld-go:demo

## 版本管理
通过镜像仓库详情页的「版本」标签页，可以查看镜像仓库各个版本的详细信息。
通过镜像仓库详情页的「设置」按钮，可以对镜像仓库的各个属性进行修改：
当你想公开自己某个镜像仓库时，修改该镜像的访问权限为「公开」

![版本管理](_figures/user-guide/image-list.png)