require './lib/player'
class Game
  def attack(player)
    player.reduce_health
  end
end
