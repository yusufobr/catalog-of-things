require_relative '../classes/music/genre'
require_relative '../classes/item'

require 'rspec'

RSpec.describe Genre do
  describe '#add_item' do
    it "adds an item to the genre's items array" do
      genre = Genre.new('Action')
      item = Item.new('2020-08-08')
      genre.add_item(item)
      expect(genre.items).to include(item)
    end

    it 'sets the genre of the added item to itself' do
      genre = Genre.new('Action')
      item = Item.new('2020-08-08')
      genre.add_item(item)
      expect(item.genre).to eq(genre)
    end
  end
end
