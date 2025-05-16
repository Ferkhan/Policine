# Configuraciones de entorno de desarrollo

## Creación de red

docker network create policine-net

docker run --name ptgs --network policine-net \
  -e POSTGRES_DB=railway \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=EQdgiIzhThISqvEbupPkpSxSCWHrwZiw \
  -p 51372:5432 \
  -d postgres

docker run --name poli --network policine-net -d -v "$(pwd | sed 's|^/c|C:|')":/var/www/html -p 8080:80 poli

## Configuraicón php

docker build -t poli .

docker run --name poli -d -v $(pwd):/var/www/html -p 8080:80 poli

docker run --name poli -d -v "$(pwd | sed 's|^/c|C:|')":/var/www/html -p 8080:80 poli

## Configuración postgres

docker pull postgres

docker run --name ptgs \
  -e POSTGRES_DB=railway \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=EQdgiIzhThISqvEbupPkpSxSCWHrwZiw \
  -p 51372:5432 \
  -d postgres

Importar datos

docker cp app/data_access/DB_Policine.sql ptgs:/tmp/dump.sql

docker exec -i ptgs pg_restore -U postgres -d railway /tmp/dump.sql

## Instalaciones adicionales

Ping

apt update && apt install -y iputils-ping

Postgres Client

apt update  
apt install -y postgresql-client
