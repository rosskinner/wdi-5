require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'butterfly'

before do
  @families = Butterfly.select('family').uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/butterflies'
end

#All butterflies
get '/butterflies' do
  @butterflies = Butterfly.all

  erb :butterflies
end

#family
get '/butterflies/family/:family' do
  @butterflies = Butterfly.where :family => params[:family]
  erb :butterflies
end

# Form for a new butterfly
get '/butterflies/new' do
  erb :new_butterfly
end



#A specific butterfly
get '/butterflies/:id' do
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :butterfly
end

#Edit a butterfly
get '/butterflies/:id/edit' do
  id = params[:id]
  @butterfly = Butterfly.find id
  erb :edit_butterfly
end

#Update a butterfly
post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]

  butterfly.update_attributes :name => params[:name], :image => params[:image], :family => params[:family]
  redirect to "/butterflies/#{butterfly.id}"
end

#Delete butterfly
get '/butterflies/:id/delete' do
  id = params[:id]
  butterfly = Butterfly.find id

  butterfly.destroy

  redirect to "/butterflies/#{butterfly.id}"
end

# Add new butterfly to database
post '/butterflies' do
  # Long way of creating butterfly
  # butterfly = Butterfly.new
  # butterfly.name = params[:name]
  # butterfly.image = params[:image]
  # butterfly.family = params[:family]

  # butterfly.save

  Butterfly.create :name => params[:name], :image => params[:image], :family => params[:family]
  redirect to '/butterflies'
end
