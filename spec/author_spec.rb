require_relative '../author'
require_relative '../item'
describe Author do
  context 'Test Author object' do
    let(:author) { Author.new('Jack', 'Harrison') }
    let(:item) { Item.new('2002-03-11') }
    it 'check for the firstname' do
      expect(author.first_name).to eq('Jack')
    end
    it 'check for lastname' do
      expect(author.last_name).to eq('Harrison')
    end
    it 'check for item if is an array' do
      expect(author.items).to be_instance_of(Array)
    end
    it 'if author is an instance of Author class' do
      expect(author).to be_instance_of(Author)
    end
    it 'sets the item author to the current author' do
      author.add_items(item)
      expect(item.author).to eq(author)
    end
  end
end
