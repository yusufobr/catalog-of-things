require_relative '../classes/games/author'

module AuthorModule
  def list_of_authors
    @authors = @author_data.load_authors
    puts 'No author available' if @authors.empty?
    @authors.each_with_index do |author, i|
      puts "#{i + 1}) Firstname: #{author.first_name}, Lastname: #{author.last_name}"
    end
  end
end
