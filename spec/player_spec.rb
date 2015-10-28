require 'player'

describe Player do
  let(:player1){described_class.new("Alaan")}
  let(:player2) { described_class.new("Andrew")}

  it 'has a name' do
    expect(player1.name).to eq("Alaan")
  end

  describe '#reduce_health' do
    it 'reduces players health' do
      expect {player1.reduce_health}.to change{player1.health}.from(100).to(90)
    end
  end
end
