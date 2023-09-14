require_relative '../classes/games/author'
require 'json'

class AuthorManager
  DATA_FOLDER = 'json/'.freeze

  def load_authors
    return [] unless File.exist?("#{DATA_FOLDER}authors.json")

    content = File.read("#{DATA_FOLDER}authors.json")
    return [] if content.strip.empty?

    author_data = JSON.parse(content)
    authors = []
    author_data.map { |data| authors << Author.new(data['firstname'], data['lastname']) }
    authors
  end
end
