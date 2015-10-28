require 'game'

describe Game do
  let(:game){described_class.new}
  let(:andrew){double(:player)}
  context 'When attacking' do
    it {is_expected.to respond_to(:attack).with(1).argument}
    it 'reduces the players health' do
      expect(andrew).to receive(:reduce_health)
      game.attack(andrew)
    end
  end
end
