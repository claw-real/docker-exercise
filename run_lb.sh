#!/bin/bash

docker run \
  --rm  \
  --name lb \
  -it \
  -v \
  "$PWD"/conf/nginx.conf:/etc/nginx/nginx.conf \
  -p 80:80 \
  --link ws1:ws1 \
  --link ws2:ws2 \
  --link ws3:ws3 \
  claw/test-nginx
