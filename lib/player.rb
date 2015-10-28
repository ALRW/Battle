class Player
  attr_reader :name, :health
  def initialize(name)
    @name = name
    @health = 100
  end

  def attack(player)
    player.reduce_health
  end

  def reduce_health
    @health -= 10
  end

end
