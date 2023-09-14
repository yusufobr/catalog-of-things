require_relative '../classes/music/genre'

module GenreModule
  def list_all_genre
    @genres = @genre_data.obtain_genre
    if @genres.empty?
      puts 'Genre is empty at the momment'
    else
      @genres.each_with_index do |genre, i|
        puts "#{i + 1}) ID: #{genre.id}, Genre: #{genre.name}"
      end
    end
  end
end
