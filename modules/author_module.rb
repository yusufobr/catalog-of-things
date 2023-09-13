require_relative '../classes/games/author'

module AuthorModule
  def list_of_authors
    puts 'No author available' if @authors.empty?
    @authors.each_with_index do |author, i|
      puts "#{i + 1}) First name: #{author.first_name}, Last name: #{author.last_name}"
    end
  end
end
