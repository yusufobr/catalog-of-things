require_relative '../classes/games/game'

module GameModule
  def create_game(publish_date, multiplayer, last_played_at)
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games << game
  end

  def list_all_games
    if @games.empty?
      puts 'There are no games'
    else
      @games.each_with_index do |game, i|
        last_date = game.last_played_at
        puts "#{i + 1}) Multiplayer: #{game.multiplayer},
                last played at: #{last_date},
                published at: #{game.publish_date}"
      end
    end
  end
end
