

describe Player do
  
  it "returns the name" do
    zoro = Player.new("Zoro")
    expect(zoro.name).to eq "Zoro"
  end
end