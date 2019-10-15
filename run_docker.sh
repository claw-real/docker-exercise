#!/bin/bash

docker run -d \
  --rm \
  --name ws1 \
  -v $PWD/html/ws1.html:/var/www/html/index.html \
  -p 1180:80 \
  claw/test-nginx
