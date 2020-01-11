#!/bin/bash

cd $(dirname "$0")

tag=cr.d.xiaomi.net/containercloud/prometheus:v2.15.1-alpine

docker build -t $tag .

if [ "$1" = "push" ]; then
    docker push $tag
fi