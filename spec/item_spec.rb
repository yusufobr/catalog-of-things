require_relative '../classes/item'

describe Item do
  context 'Test item object' do
    let(:item) { Item.new('2010-01-21', archived: false) }
    it 'test for can_be_archived?' do
      expect(item.can_be_archived?).to eq(true)
    end
    it 'test for can_be_archived?' do
      expect(item.move_to_archive).to eq(true)
    end
    it 'test for can_be_archived?' do
      expect(item.publish_date).to eq('2010-01-21')
    end
    it 'test for can_be_archived?' do
      expect(item.archived).to eq(false)
    end
  end
end
