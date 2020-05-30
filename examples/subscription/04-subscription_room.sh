#!/bin/bash
curl localhost:10026/v2/subscriptions -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "description": "A simple example get info about 331:Lobby sensor",
  "subject": {
    "entities": [
      {
        "id": "331:Lobby",
        "type": "Room"
      }
    ],
    "condition": {
      "attrs": [
        "temperature"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://client:8081/temperature"
    },
    "attrs": [
      "temperature"
    ]
  },
  "expires": "2021-01-01T11:00:00.00Z",
  "throttling": 5
}
EOF