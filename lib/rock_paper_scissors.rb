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
    @player = session[:me]
    erb :index
  end

   post '/new_player' do
    player = Player.new
    player.name = params[:player_name]
    session[:me] = params[:player_name]
    GAME.add_player(player)
    redirect '/'
  end

  get '/new_game' do
    GAME.reset
    @player = session[:me]
  	erb :new_game
  end

  post '/new_game/option' do
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
      @player = session[:me]
      @option1 =  GAME.player1.option
      @option2 = GAME.random_option
      @result = GAME.assess_winner(@option1.name, @option2.name)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
