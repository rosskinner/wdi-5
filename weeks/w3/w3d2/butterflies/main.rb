require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'butterfly'
require_relatice 'plant'

before do
  @families = query_db "SELECT DISTINCT(family) FROM butterflies"
end

get '/' do
  redirect to '/butterflies'
end

#All butterflies
get '/butterflies' do
  @butterflies = query_db "SELECT * FROM butterflies"

  erb :butterflies
end

#family
get '/butterflies/family/:family' do
  @butterflies = query_db "SELECT * FROM butterflies WHERE family='#{params[:family]}'"

  erb :butterflies
end

# Form for a new butterfly
get '/butterflies/new' do
  erb :new_butterfly
end



#A specific butterfly
get '/butterflies/:id' do
  id = params[:id]
  sql = "SELECT * FROM butterflies WHERE id =#{id}"
  @butterfly = query_db sql
  @butterfly = @butterfly.first
  erb :butterfly
end

#Edit a butterfly
get '/butterflies/:id/edit' do
  id = params[:id]
  sql = "SELECT * FROM butterflies WHERE id =#{id}"
  @butterfly = query_db sql
  @butterfly = @butterfly.first
  erb :edit_butterfly
end

#Update a butterfly
post '/butterflies/:id' do
  id = params[:id]
  name = params[:name]
  image = params[:image]
  family = params[:family]

  sql = "UPDATE butterflies SET name='#{name}', image='#{image}', family='#{family}' WHERE id=#{id}"
  query_db sql
  redirect to "/butterflies/#{id}"
end

#Delete butterfly
get '/butterflies/:id/delete' do
  id = params[:id]
  sql = "DELETE FROM butterflies WHERE id=#{id}"
  query_db sql

  redirect to "/butterflies/#{id}"
end

# Add new butterfly to database
post '/butterflies' do
  name = params[:name]
  image = params[:image]
  family = params[:family]
  sql = "INSERT INTO butterflies (name, image, family) VALUES ('#{name}', '#{image}', '#{family}')"
  query_db sql
  redirect to '/butterflies'
end

def query_db(sql)
  db =SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end