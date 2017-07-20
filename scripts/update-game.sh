#!/bin/bash

PLAYTIME=300
curl --include --request PATCH http://localhost:4741/games/${ID} \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "playtime": "'"${PLAYTIME}"'"
    }
  }'
echo
