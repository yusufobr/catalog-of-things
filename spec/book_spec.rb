require_relative '../classes/books/book'

describe Book do
  it('should create a book') do
    book = Book.new('Abel', 'bad ', '10-10-2010')

    expect(book.publisher).to eq('Abel')
  end

  it('should be check archivablity ') do
    book1 = Book.new('Yusuf', 'bad ', '10-10-2010')
    expect(book1.can_be_archived?).to eq(true)

    book2 = Book.new('Yusuf', 'Good ', '10-10-2019')
    expect(book2.can_be_archived?).to eq(false)

    book2 = Book.new('Yusuf', 'Good ', '10-10-2010')
    expect(book2.can_be_archived?).to eq(true)
  end
end
