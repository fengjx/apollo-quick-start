#! /bin/bash

mkdir -p sql mysql

if [ ! -f "$file" ]; then
  echo "下载 docker-compose.yml"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/docker-compose.yml -o docker-compose.yml
fi

if [ ! -d "$folder"]; then
  echo "下载 docker-compose.yml"
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloconfigdb.sql -o sql/apolloconfigdb.sql
  curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloportaldb.sql -o sql/apolloportaldb.sql
fi

sudo docker compose up -d
