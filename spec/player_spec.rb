

describe Player do
  let(:zoro) { Player.new("Zoro", 100)}
  let(:tanjiro) { Player.new("Tanjiro", 100)}
 
  
  it "returns the name" do
    expect(zoro.name).to eq "Zoro"
  end

  it "returns hp" do
    expect(zoro.hp).to eq 100
  end

  it "attack reduces 10hp of the attacked" do
    #expect { tanjiro.attacked }.to change { tanjiro.hp }.by(-10)
    zoro.recieve_damage
    expect(zoro.hp). to eq 90
  end


end