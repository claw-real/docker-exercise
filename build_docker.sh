#!/bin/bash

docker build \
  -t "claw/test-nginx" \
  -f ./Dockerfile.nginx .

