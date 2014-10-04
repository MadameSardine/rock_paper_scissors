require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Rock_Paper_Scissors < Sinatra::Base

	set :views, settings.root + '/../views/'
	enable :sessions

	GAME = Game.new

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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
