# frozen_string_literal: true
Rails.application.routes.draw do
  resources :playthroughs
  resources :games
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :games, except: [:new, :edit]
  resources :playthroughs, except: [:new, :edit]
end
