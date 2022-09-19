# apollo-quick-start

本项目 fork 自[apollo-quick-start](https://github.com/apolloconfig/apollo-quick-start)，对 docker 脚本做了一些修改，使用上更通用一些。其他启动方式参考官方文档。

> 本项目只能用于测试环境，生产环境部署，请查看官网文档

## docker 方式启动

需要自己另行安装 mysql

```bash
docker run -d --name apollo \
-p 8088:8080 \
-p 8070:8070 \
-p 8090:8090 \
-e APOLLO_DB_HOST="mysql-server-host" \
-e APOLLO_DB_PORT="3306" \
-e APOLLO_CONFIG_DB_USERNAME="root" \
-e APOLLO_CONFIG_DB_PASSWORD="1234" \
-e APOLLO_PORTAL_DB_USERNAME="root" \
-e APOLLO_PORTAL_DB_PASSWORD="1234" \
fengjx/apollo-quick-start
```

## docker-compose 方式启动

1. 通过 git repo 安装

```bash
git clone git@github.com:fengjx/apollo-quick-start.git
docker compose up -d
# 或者 docker-compose up -d
```

2. 一键安装

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/fengjx/apollo-quick-start/master/docker-compose-install.sh)"
```

