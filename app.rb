require_relative 'modules/game_module'
require_relative 'modules/author_module'
require_relative 'modules/genre_module'
require_relative 'modules/music_album_module'
require_relative 'modules/book_module'
require_relative 'modules/label_module'

class App
  attr_accessor :authors, :games, :genre, :albums, :books, :labels

  def initialize
    @authors = []
    @games = []
    @genres = []
    @albums = []
    @books = []
    @labels = []
  end

  include AuthorModule
  include GameModule
  include GenreModule
  include MusicAlbumModule
  include BookModule
  include LabelModule
end
