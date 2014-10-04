require 'sinatra/base'

class Rock_Paper_Scissors < Sinatra::Base

	set :views, settings.root + '/../views/'


  get '/' do
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/new_game/new_player' do
  	@name = params[:player_name]
  	redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
