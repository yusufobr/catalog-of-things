require_relative '../classes/games/game'

module GameModule
  def create_game(publish_date, multiplayer, last_played_at)
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games << game
    save_game_to_file(@games)
  end

  def list_all_games
    @games = @games_data.load_games_data
    if @games.empty?
      puts 'There are no games'
    else
      @games.each_with_index do |game, i|
        last = game.last_played_at
        puts "#{i + 1}) Multiplayer: #{game.multiplayer},last played: #{last},published at: #{game.publish_date}"
      end
    end
  end

  def save_game_to_file(games)
    @games_data.save_games_data(games)
  end
end
