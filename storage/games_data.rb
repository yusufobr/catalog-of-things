require_relative '../classes/games/game'
require 'json'
class GameData
  DATA_FOLDER = 'json/'.freeze
  def save_games_data(games)

    File.open("#{DATA_FOLDER}games.json", 'w') do |file|
      data_of_games = 
        games.map do |game|
          {
            'multiplayer' => game.multiplayer,
            'last_played_at' => game.last_played_at,
            'publish_date' => game.publish_date,
            'id' => game.id
          }
        end
      
      file.write(JSON.pretty_generate(data_of_games))
    end
  end

  def load_games_data
    return [] unless File.exist?("#{DATA_FOLDER}games.json")

    data_of_games = JSON.parse(File.read("#{DATA_FOLDER}games.json")) || []
    games = []
    data_of_games.map do |game|
      games << Game.new(game.multiplayer, game.last_played_at, game.publish_date)
    end
    games
  end
end
