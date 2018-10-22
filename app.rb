require "sinatra"
require "sinatra/reloader" if development?
require_relative "database"

set :views, (proc { File.join(root, "app/views") })

get "/" do
  @database = DB
  erb :posts
end
