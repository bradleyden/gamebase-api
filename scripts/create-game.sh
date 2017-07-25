#!/bin/bash

TITLE="Metal Gear Solid V: The Phantom Pain"
GENRE="Stealth"
RELEASE="2016/05/01"
DEVELOPER="Hideo Kojima"
PUBLISHER="Konami"
PLATFORM="Playstation 4"
PLAYTIME=60
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
