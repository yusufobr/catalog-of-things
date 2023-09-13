require_relative 'modules/game_module'
require_relative 'modules/author_module'
require_relative 'modules/genre_module'
require_relative 'modules/music_album_module'

class App
  attr_accessor :authors, :games, :genre, :albums

  def initialize
    @authors = []
    @games = []
    @genres = []
    @albums = []
  end

  include AuthorModule
  include GameModule
  include GenreModule
  include MusicAlbumModule
end
