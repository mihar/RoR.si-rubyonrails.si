require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/potrebscine/' do
  @current = :potrebscine
  haml :potrebscine
end

get '/vizualije/' do
  @current = :vizualije
  haml :vizualije
end