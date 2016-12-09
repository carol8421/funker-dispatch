#!/bin/bash

docker build -t funker-dispatch . && docker rm -f dispatch; docker run -d --restart=always --net=funker -p 3000:3000 --name dispatch funker-dispatch ; docker logs -f dispatch

