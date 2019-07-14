#!/bin/bash
set -e

docker rm -f ms4io_node_micro
docker rmi ms4io/node-microservice
docker pull ms4io/node-microservice
docker run --rm -d -p 7777:3000 --name ms4io_node_micro ms4io/node-microservice
