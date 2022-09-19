#! /bin/bash

branch=master

mkdir -p sql mysql

compose_file="docker-compose.yml"
if [ ! -f "$compose_file" ]; then
  echo "下载 docker-compose.yml"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/${branch}/docker-compose.yml -o $compose_file
fi

configdb="sql/apolloconfigdb.sql"
if [ ! -f "$configdb" ]; then
  echo "下载 ${configdb}"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/${branch}/sql/apolloconfigdb.sql -o ${configdb}
fi

portaldb="sql/apolloportaldb.sql"
if [ ! -f "$portaldb" ]; then
  echo "下载 ${portaldb}"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/${branch}/sql/apolloportaldb.sql -o ${portaldb}
fi

sudo docker compose up -d
