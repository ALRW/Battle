require './lib/player'

class Game

  attr_reader :player1, :player2

  def initialize(player_klass = Player, player1, player2)
    @player1 = player_klass.new(player1)
    @player2 = player_klass.new(player2)
  end

  def attack(player)
    player.reduce_health
  end
end
