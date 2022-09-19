#! /bin/bash

mkdir sql mysql

curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/docker-compose.yml -o docker-compose.yml
curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloconfigdb.sql -o sql/apolloconfigdb.sql
curl -L https://raw.githubusercontent.com/fengjx/apollo-quick-start/dev/sql/apolloportaldb.sql -o sql/apolloportaldb.sql

docker compose up -d

