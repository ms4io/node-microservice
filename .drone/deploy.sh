#!/bin/bash
set -e

docker rm -f eurovinhos_node_micro
docker rmi eurovinhos/node-microservice
docker pull eurovinhos/node-microservice
docker run --rm -d -p 7777:3000 --name eurovinhos_node_micro eurovinhos/node-microservice
