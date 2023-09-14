module MainModule
  def add_games(app)
    puts "\n"
    puts 'Is game multiplayers [Yes/No]:'
    multiplayer_input = gets.chomp
    puts 'When was the game last played [Enter date format year/month/date]:'
    last_played_at_date = gets.chomp
    puts 'When was game published [Enter date format year/month/date]:'
    publish_date_input = gets.chomp
    app.create_game(publish_date_input, multiplayer_input, last_played_at_date)
  end

  def add_books(app)
    puts "\n"
    puts 'Who is the publisher [Enter Publisher Name]:'
    publisher = gets.chomp
    puts 'What Is the cover\'s state like? [Enter good or bad]:'
    cover_state = gets.chomp
    puts 'When was the book published [Enter date format year/month/date]:'
    publish_date = gets.chomp
    app.create_book(publisher, cover_state, publish_date)
  end

  def add_music(app)
    puts "\n"
    puts 'Is it on spotify :'
    on_spotify = gets.chomp
    if %w[True true].include?(on_spotify)
      on_spotify = true
    elsif %w[False false].include?(on_spotify)
      on_spotify = false
    else
      puts 'Invalid input'
    end
    puts ' Publish date [format year/month/date]:'
    publish_date = gets.chomp
    app.create_music_album(publish_date, on_spotify)
  end
end
