#!/usr/bin/env bash

docker compose down
docker volume rm postgres_db_main
docker volume rm postgres_db_slave
