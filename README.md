## GameBase API Guide

API URL: https://guarded-fjord-43518.herokuapp.com/

Front-End Repo: https://github.com/bradleyden/gamebase-front-end

Welcome to the GameBase API guide!

## Endpoints:

Users:
post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out/:id' => 'users#signout'
patch '/change-password/:id' => 'users#changepw'

Games:
get '/games' => index
get '/games/:id' => show
post '/games' => create
delete '/games/:id' => destroy
patch '/games/:id' => update

Playthroughs:
get '/playthroughs' => index
get '/playthroughs/:id' => show
post '/playthroughs' => create
delete '/playthroughs/:id' => destroy
patch '/playthroughs/:id' => update

## Use:

This API will store user data, games data, and playthroughs data. The games resource contains a foreign key for a user and the playthroughs resource contains a foreign key for both a user and a game.

Games requires JSON data including Title, Genre, Platform, and user_id.
Also permits Release Date, Developer, Publisher and Playtime.

Playthroughs requires JSON data including game_id, user_id, game, and Date Started.
Also permits Completion, Playtime, and Date Finished.
