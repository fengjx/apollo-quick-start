#! /bin/bash

mkdir -p sql mysql

compose_file="docker-compose.yml"
if [ ! -f "$compose_file" ]; then
  echo "下载 docker-compose.yml"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/docker-compose.yml -o $compose_file
fi

configdb="sql/apolloconfigdb.sql"
if [ ! -d "$configdb" ]; then
  echo "下载 ${configdb}"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloconfigdb.sql -o ${configdb}
fi

portaldb="sql/apolloportaldb.sql"
if [ ! -d "$portaldb" ]; then
  echo "下载 ${portaldb}"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloportaldb.sql -o ${portaldb}
fi

sudo docker compose up -d
