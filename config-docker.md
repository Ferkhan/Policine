# Configuraciones de entorno de desarrollo

## Configuraicón php

docker build -t poli .

docker run --name poli -d -v $(pwd):/var/www/html -p 8080:80 poli

## Configuración postgres

docker pull postgres

docker run --name postgres-local \
  -e POSTGRES_DB=railway \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=EQdgiIzhThISqvEbupPkpSxSCWHrwZiw \
  -p 51372:5432 \
  -d postgres

Importar datos

docker cp app/data_access/DB_Policine.sql postgres-local:/tmp/dump.sql

docker exec -i postgres-local  pg_restore -U postgres -d railway /tmp/dump.sql
