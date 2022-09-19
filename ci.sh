#! /bin/bash

# 打 jar 包
# bash ci.sh package

# 构建 docker 镜像
# bash ci.sh build_docker [version]

# docker compose 启动
# bash ci.sh docker_compose

# set -ex

DIST_DIR=.dist
VERSION=${2:-latest}

build_docker() {
    echo '镜像构建开始 ${VERSION}'
    export DOCKER_SCAN_SUGGEST=false
    docker build -t fengjx/apollo-quick-start:${VERSION} .
    echo '镜像构建结束'
}

docker_compose() {
    build_docker
    echo 'docker compose up'
    docker compose up -d
}

case_opt=$1
shift

case ${case_opt} in
build_docker)
    build_docker "$@"
    ;;
docker_compose)
    docker_compose "$@"
    ;;
esac
