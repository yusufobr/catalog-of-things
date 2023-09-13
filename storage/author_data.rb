require_relative '../classes/games/author'
require 'json'

class AuthorManager
  DATA_FOLDER = 'json/'.freeze

  def load_authors
    return [] unless File.exist?("#{DATA_FOLDER}authors.json")

    author_data = JSON.parse(File.read("#{DATA_FOLDER}authors.json")) || []
    authors = []
    author_data.map { |data| authors << Author.new(data.first_name, data.last_name) }
    authors
  end
end
