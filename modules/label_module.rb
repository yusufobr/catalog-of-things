require_relative '../classes/books/label'

module LabelModule
  def list_all_labels
    if @labels.empty?
      puts 'There are no labels'
    else
      @labels.each_with_index do |label, i|
        puts "Number: #{i + 1}, title: #{label.title}, color: #{label.color}"
      end
    end
  end
end
