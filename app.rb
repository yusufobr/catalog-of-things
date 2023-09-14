require_relative 'modules/game_module'
require_relative 'modules/author_module'
require_relative 'modules/genre_module'
require_relative 'modules/music_album_module'
require_relative 'modules/book_module'
require_relative 'modules/label_module'
require_relative 'storage/author_data'
require_relative 'storage/games_data'
require_relative 'storage/genre_data'
require_relative 'storage/label_data'
require_relative 'storage/books_data'
require_relative 'storage/music_album_data'

class App
  attr_accessor :authors, :games, :genre, :albums, :books, :labels

  def initialize
    @authors = []
    @games = []
    @genres = []
    @albums = []
    @books = []
    @labels = []
    @games_data = GameData.new
    @music_data = MusicManager.new
    @label_data = LabelManager.new
    @author_data = AuthorManager.new
    @books_data = BookData.new
    @genre_data = GenreData.new
  end

  include AuthorModule
  include GameModule
  include GenreModule
  include MusicAlbumModule
  include BookModule
  include LabelModule
  def load_data
    @games_data.load_games_data
    @music_data.obtain_music_album
    @book_data.load_books
    @author_data.load_authors
    @label_data.load_labels
    @genre_data.obtain_genre
  end
end
