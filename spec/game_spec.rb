require 'game'

describe Game do
  let(:player_klass) { double(:player_klass, new: '')}
  subject(:game){described_class.new(player_klass, :player1, :player2)}
  let(:player2){double(:player2)}

  context 'When attacking' do
    it { is_expected.to respond_to(:attack).with(1).argument}
    it 'reduces the players health' do
      expect(player2).to receive(:reduce_health)
      game.attack(player2)
    end
  end
end
