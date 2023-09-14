require_relative 'app'
require_relative 'modules/main_module'

class Main
  include MainModule
  def lists_option
    puts '1. Add Book'
    puts '2. Add Game'
    puts '3. Add music Album'
    puts '4. List all books'
    puts '5. List all music albums'
    puts '6. List of games'
    puts '7. List all genres'
    puts '8. List all labels'
    puts '9. List all authors'
    puts '10. exit'
  end

  def main
    app = App.new
    loop do
      lists_option
      choose = gets.chomp.to_i
      choices = {
        1 => -> { add_books(app) }, 2 => -> { add_games(app) }, 3 => -> { add_music(app) },
        4 => -> { app.list_all_books },
        5 => -> { app.list_music_albums },
        6 => -> { app.list_all_games },
        7 => -> { app.list_all_genre },
        8 => -> { app.list_all_labels },
        9 => -> { app.list_of_authors },
        10 => -> { exit }
      }
      case choose
      when 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
        choices[choose].call
      end
    end
  end
end

main = Main.new
main.main
