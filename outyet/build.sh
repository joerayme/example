#!/bin/bash

export DOCKER_HOST="tcp://`/sbin/ip route|awk '/default/ { print $3 }'`:2376"
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/var/go/certs

docker build --rm --tag outyet:v$GO_PIPELINE_LABEL .
docker run --volume build:/go/bin --rm outyet:v$GO_PIPELINE_LABEL ls /go/bin/outyet