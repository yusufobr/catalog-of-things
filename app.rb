require_relative 'modules/game_module'
require_relative 'modules/author_module'

class App
  attr_accessor :authors, :games

  def initialize
    @authors = []
    @games = []
  end
  include AuthorModule
  include GameModule
end
app = App.new
app.list_of_authors
