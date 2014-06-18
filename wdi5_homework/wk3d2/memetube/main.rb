require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pry-debugger'
require 'sqlite3'

get '/' do
  redirect to '/memetube'
end

get '/memetube' do
  @videos = query_db "SELECT * FROM videos"
  erb :memetube
end

get '/memetube/new' do
  erb :new_video
end

get '/memetube/:id' do
  id =params[:id]
  sql = "SELECT * FROM videos WHERE id=#{id}"
  @video = query_db sql
  @video = @video.first

  @url_split = @video['url'].split(/&|=/)
  @url = @url_split[1]

  erb :video
end

get '/memetube/:id/edit' do
  id = params[:id]
  sql = "SELECT * FROM videos WHERE id =#{id}"
  @video = query_db sql
  @video = @video.first
  erb :edit
end

post '/memetube/:id' do
  id = params[:id]
  title = params[:title]
  description = params[:description]
  url = params[:url]
  genre = params[:genre]

  sql = "UPDATE videos SET title='#{title}', description='#{description}', url='#{url}', genre='#{genre}' WHERE id='#{id}'"
  query_db sql

  redirect to "/memetube/#{id}"
end


get '/memetube/:id/delete' do
  id = params[:id]
  sql = "DELETE FROM videos WHERE id =#{id}"
  query_db sql
  redirect to "/memetube"
end

post '/memetube' do
  title = params[:title]
  description = params[:description]
  url = params[:url]
  genre = params[:genre]
  sql = "INSERT INTO videos (title, description, url, genre) VALUES ('#{title}', '#{description}', '#{url}', '#{genre}')"
  query_db sql
  redirect to '/memetube'
end

def query_db(sql)
  db =SQLite3::Database.new "videos.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end