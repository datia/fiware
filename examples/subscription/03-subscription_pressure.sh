#!/bin/bash
curl localhost:10026/v2/subscriptions -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "description": "A simple example get info about pressure on all rooms",
  "subject": {
    "entities": [
      {
        "idPattern": ".*",
        "type": "Room"
      }
    ],
    "condition": {
      "attrs": [
        "pressure"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://client:8081/pressure"
    },
    "attrs": [
      "pressure"
    ]
  },
  "expires": "2021-01-01T11:00:00.00Z",
  "throttling": 5
}
EOF