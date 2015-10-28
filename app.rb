require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
    # 'Hello Battle!'
  end

  post '/names' do
    $game = (Game.new(Player, (params[:player1]), (params[:player2]) ))
    # $player1 = (Player.new(params[:player1]))
    # $player2 = (Player.new(params[:player2]))
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    # @player2 = $player2
    erb(:play)
  end

  get '/attack_confirmation' do
    @game = $game
    # @player1 = $player1
    # @player2 = $player2
    $game.attack(($game.player2))
    erb(:attack_confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
