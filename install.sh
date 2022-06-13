#!/bin/bash
docker volume create rocketchat_db1
docker volume create rocketchat_db2
docker volume create rocketchat_uploads
echo "Please modify files in ./env containing required secret variables in docker compose stack"
