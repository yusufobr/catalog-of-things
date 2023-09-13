require_relative '../classes/games/game'

describe Game do
  context 'Test for Game object' do
    let(:game) { Game.new('2002-02-01', 3, '2020-08-01') }
    it 'check for published date' do
      expect(game.publish_date).to eq('2002-02-01')
    end
    it 'check for can_be_archived' do
      expect(game.can_be_archived?).to eq(true)
    end
    it 'check for last_date state' do
      expect(game.last_played_at).to eq('2020-08-01')
    end
  end
end
