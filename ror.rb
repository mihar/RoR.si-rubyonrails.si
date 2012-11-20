require "rubygems"
require "bundler"
Bundler.require :default, (ENV["RACK_ENV"] || "development").to_sym

get '/' do
  cache_control :public, max_age: 86400
  haml :index
end

get '/download/' do
  cache_control :public, max_age: 86400
  @current = :download
  haml :download
end

get '/screencasti/' do
  cache_control :public, max_age: 86400
  @current = :screencasti
  haml :screencasti
end