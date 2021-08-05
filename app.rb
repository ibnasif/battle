require 'sinatra/base'
require "sinatra/reloader" 
require_relative "lib/player.rb"
require_relative "lib/game.rb"




class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do

    
    player1 = Player.new(params[:p1_name])
    player2 = Player.new(params[:p2_name])

    $game = Game.new(player1, player2)

     #storing them in sessions instead of assigning instance variables
     redirect '/play'

     #we want the user to:

     #submit the form to post '/names'
     #extract the submitted names from the params into the session
     #redirect to get '/play'
     #extract the names from the session to instance variables
     

  end

  get '/play' do 
    @game = $game
    erb :play

  end


  get '/attack' do #page that displays p1 attacked p2
    @game = $game
    
    @game.attack(@game.player2)
    erb :attack
  end










  #start server if ruby file executed directly 

  run! if app_file == $0
end