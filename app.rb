require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
    # 'Hello Battle!'
  end

  post '/names' do
    $player1 = (Player.new(params[:player1]))
    $player2 = (Player.new(params[:player2]))
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  get '/attack_confirmation' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
