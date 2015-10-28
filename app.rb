require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
    # 'Hello Battle!'
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/attack_confirmation' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
