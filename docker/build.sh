#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/nginx
docker build -t mydocker/nginx:$1 -t mydocker/nginx:latest .
docker push mydocker/nginx:$1
docker push mydocker/nginx:latest

cd $DIR/php
docker build -t mydocker/php:$1 -t mydocker/php:latest .
docker push mydocker/php:$1
docker push mydocker/php:latest
