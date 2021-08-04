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

  post '/names' do
    
    $player1 = Player.new(params[:p1_name])
    $player2 = Player.new(params[:p2_name])

     #storing them in sessions instead of assigning instance variables
     redirect '/play'

     #we want the user to:

     #submit the form to post '/names'
     #extract the submitted names from the params into the session
     #redirect to get '/play'
     #extract the names from the session to instance variables
     

  end

  get '/play' do 
    @p1_name = $player1.name
    @p2_name = $player2.name
    erb :play

  end


  get '/attack' do #page that displays p1 attacked p2
    @p1_name = $player1.name
    @p2_name = $player2.name
    erb :attack
  end










  #start server if ruby file executed directly 

  run! if app_file == $0
end