

class Game

  attr_accessor :player1, :player2 
   
  def initialize(player1, player2)
   @players = [player1,player2]


  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end


  def attack(player)
    player.recieve_damage
  end

end
