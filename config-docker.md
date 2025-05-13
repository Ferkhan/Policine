# Configuraciones de entorno de desarrollo

## Configuraicón php

docker run --name NOMBRE -v $(pwd):/var/www/html -p 8080:80 IMAGEN

## Configuración postgres

docker pull postgres

docker run --name postgres-local \
  -e POSTGRES_DB=railway \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=EQdgiIzhThISqvEbupPkpSxSCWHrwZiw \
  -p 51372:5432 \
  -d postgres
