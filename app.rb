require 'sinatra/base'
require "sinatra/reloader" 


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'welcome to battle'
  end

  #start server if ruby file executed directly 

  run! if app_file == $0
end