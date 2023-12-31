require_relative '../classes/books/book'

module BookModule
  def create_book(publisher, cover_state, publish_date)
    book = Book.new(publisher, cover_state, publish_date)
    @books << book
    save_book_to_file(@books)
  end

  def list_all_books
    @books = @books_data.load_books
    if @books.empty?
      puts 'There are no books'
    else
      @books.each_with_index do |book, i|
        puts '--------'
        puts "#{i + 1}Publisher: #{book.publisher},Cover state: #{book.cover_state},Published: #{book.publish_date}"
      end
    end
  end

  def save_book_to_file(books)
    @books_data.save_books(books)
  end
end
