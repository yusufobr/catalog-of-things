module MainModule
  def add_game(app)
    puts "\n"
    puts 'Is game multiplayers [Yes/No]:'
    multiplayer_input = gets.chomp
    puts 'When was the game last played [Enter date format year/month/date]:'
    last_played_at_date = gets.chomp
    puts 'When was game published [Enter date format year/month/date]:'
    publish_date_input = gets.chomp
    app.create_game(multiplayer_input, last_played_at_date, publish_date_input)
  end
end
