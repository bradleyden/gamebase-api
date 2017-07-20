#!/bin/bash

ID=6
PLAYTIME="300"
curl --include --request PATCH http://localhost:4741/games/${ID} \
 --header "Content-Type: application/json" \
  --data '{
    "game": {
      "playtime": "'"${PLAYTIME}"'"
    }
  }'

echo
