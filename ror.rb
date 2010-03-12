require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/download/' do
  @current = :download
  haml :download
end

get '/screencasti/' do
  @current = :screencasti
  haml :screencasti
end