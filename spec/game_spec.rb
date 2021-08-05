require 'game'

describe Game do

  let(:game) {Game.new(player1,player2)}
  let(:player1) {double :player}
  let(:player2) {double :player}

  it "returns player1" do
    expect(game.player1).to eq player1
  end
  

  it "attack damages the player" do
    
    expect(player1).to receive(:recieve_damage)
    game.attack(player1)
    
  end

  
end