require 'player'

describe Player do
  let(:player){described_class.new("Alaan")}
  it 'has a name' do
    expect(player.name).to eq("Alaan")
  end
end
