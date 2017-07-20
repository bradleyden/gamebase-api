#!/bin/bash

TITLE="Skyrim"
GENRE="RPG"
RELEASE="11/11/11"
DEVELOPER="Bethesda"
PUBLISHER="Bethesda"
PLATFORM="PC"
PLAYTIME=200
TOKEN="BAhJIiViZjhiY2Y5OTNiYzhhMWQ3MTI1YTNiODAwODc5OGQzNwY6BkVG--cd36f080b1023049c46a4ce52c4e7bc905902a94"
curl --include --request POST http://localhost:4741/games \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=$TOKEN" \
  --data '{
    "game": {
      "title": "'"${TITLE}"'",
      "genre": "'"${GENRE}"'",
      "release": "'"${RELEASE}"'",
      "developer": "'"${DEVELOPER}"'",
      "publisher": "'"${PUBLISHER}"'",
      "platform": "'"${PLATFORM}"'",
      "playtime": "'"${PLAYTIME}"'"
    }
  }'

echo
