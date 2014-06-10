require 'pry'
require 'sinatra'
require 'sinatra/reloader'

# When someone tries to get this url address or requests this web address then do this...
get '/' do
  "Hello world from Sinartra"
end

get '/hello' do
  "I like coffee"
end

get '/greet/:firstname'do #making it dynamic. you can change :firstname in your web address to name and it will change
  "Hello there #{ params[:firstname].capitalize }"
end

get '/greet/:firstname/:lastname' do
  "How do you do #{params[:firstname].capitalize} #{params[:lastname].upcase}"
end

get 'greet/:firstname/:lastname/:age' do
  "You are #{params[:firstname].capitalize} #{params[:lastname]} and you are #{params[:age]}"
end

##calculator

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{result}"
end