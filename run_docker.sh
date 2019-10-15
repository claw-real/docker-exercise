#!/bin/bash

docker run -d \
  --rm \
  --name ws1 \
  -v "$PWD"/html/ws1.html:/var/www/html/index.html \
  -p 1180:80 \
  claw/test-nginx

docker run -d \
  --rm \
  --name ws2 \
  -v "$PWD"/html/ws2.html:/var/www/html/index.html \
  -p 1280:80 \
  claw/test-nginx

docker run -d \
  --rm \
  --name ws3 \
  -v "$PWD"/html/ws3.html:/var/www/html/index.html \
  -p 1380:80 \
  claw/test-nginx
