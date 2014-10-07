require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative'rock'
require_relative 'paper'
require_relative 'scissors'

class Rock_Paper_Scissors < Sinatra::Base

	set :views, settings.root + '/../views/'
  set :public_folder, settings.root + '/../public/'
	enable :sessions

	GAME = Game.new([Rock.new, Paper.new, Scissors.new])

  get '/' do
  	@player1 = GAME.player1.name unless GAME.player1.nil?
    @player2 = GAME.player2.name unless GAME.player2.nil?
    @player = session[:me]
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/new_game/new_player' do
  	player = Player.new
  	player.name = params[:player_name]
  	session[:me] = params[:player_name]
  	GAME.add_player(player)
  	redirect '/'
  end

  post '/option' do
  	if params[:option].nil?
      redirect '/'
    else
      option_name = params[:option]
    	option = GAME.options.find{|option| option.name == option_name}
      if session[:me] == GAME.player1.name  
    	   GAME.player1.select(option)
      elsif session[:me] ==  GAME.player2.name
         GAME.player2.select(option)
      end
    	redirect '/new_game/result'
    end
  end

  get '/new_game/result' do
  	@option1 =  GAME.player1.option
      if GAME.player2.nil?
  	     @option2 = GAME.random_option
      else
        @option2 = GAME.player2.option
      end
  	erb :result
  end

  get '/reset' do
    GAME.player1.option = nil unless GAME.player1.nil?
    GAME.player2.option = nil unless GAME.player2.nil?
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
