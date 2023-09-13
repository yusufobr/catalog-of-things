require_relative '../classes/books/book'
require 'json'

class BookData
  DATA_FOLDER = 'json/'.freeze
  JSON_FILE = "#{DATA_FOLDER}book.json".freeze

  def load_books
    return [] unless File.exist?(JSON_FILE)

    data = JSON.parse(File.read(JSON_FILE))
    data['Books'].map do |book_data|
      Book.new(book_data['publisher'], book_data['cover_state'], book_data['publish_date'])
    end
  end

  def save_books(books)
    File.open(JSON_FILE, 'w') do |file|
      data = {
        'Books' => books.map do |book|
          {
            'publisher' => book.publisher,
            'cover_state' => book.cover_state,
            'publish_date' => book.publish_date
          }
        end
      }
      file.write(JSON.pretty_generate(data))
    end
  end
end
