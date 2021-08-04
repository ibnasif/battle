require 'sinatra/base'
require "sinatra/reloader" 


class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  

  get '/play' do 
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb :player_names
    

  end

  post '/names' do
    
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
     #storing them in sessions instead of assigning instance variables
     redirect '/play'   
  end

  #start server if ruby file executed directly 

  run! if app_file == $0
end