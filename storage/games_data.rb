require_relative '../classes/games/game'
require 'json'
class GameData
  DATA_FOLDER = 'json/'.freeze
  def save_games_data(games)
    File.open("#{DATA_FOLDER}games.json", 'w') do |file|
      data_games = {
        'Games' => games.map do |game|
          {
            'multiplayer' => game.multiplayer,
            'last_played' => game.last_played_at,
            'publish_date' => game.publish_date
          }
        end
      }
      file.write(JSON.pretty_generate(data_games))
    end
  end

  def load_games_data
    return [] unless File.exist?("#{DATA_FOLDER}games.json")

    file_content = File.read("#{DATA_FOLDER}games.json")
    return [] if file_content.strip.empty?

    data_of_games = JSON.parse(file_content)
    games = []
    data_of_games['Games'].map do |game|
      games << Game.new(game['publish_date'], game['multiplayer'], game['last_played'])
    end
    games
  end
end
