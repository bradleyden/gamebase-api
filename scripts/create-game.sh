#!/bin/bash

TITLE="Skyrim"
GENRE="RPG"
RELEASE="11/11/11"
DEVELOPER="Bethesda"
PUBLISHER="Bethesda"
PLATFORM="PC"
PLAYTIME="200 hrs"
curl --include --request POST http://localhost:4741/games \
 --header "Content-Type: application/json" \
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
