
class Player
  attr_reader :name, :hp

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def hp
    @hp
  end

  def recieve_damage
    @hp -= 10
  end



end
