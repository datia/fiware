#!/bin/bash
curl localhost:10026/v2/entities/331:Lobby/attrs/temperature/value -s -v -S \
    --header 'Content-Type: text/plain' \
    -X PUT -d 25.3