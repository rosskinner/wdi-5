Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/numbers' => 'pages#numbers', :as => :numbers
  get'/text' => 'pages#text'
  get '/assets_demo' => 'pages#assets'
  get '/url' => 'pages#url'
end
