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
    	GAME.player1.select(option)
    	redirect '/new_game/result'
    end
  end

  get '/new_game/result' do
  	@option1 =  GAME.player1.option
  	@option2 = GAME.random_option
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
