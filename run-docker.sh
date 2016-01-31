#!/usr/bin/env bash
docker run -d \
    -v $(pwd)/config.docker/:/etc/kong/ \
    -p 8000:8000 \
    -p 8443:8443 \
    -p 8001:8001 \
    -p 7946:7946 \
    -p 7946:7946/udp \
    --name kong \
    mashape/kong:0.6.0