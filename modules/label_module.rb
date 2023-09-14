require_relative '../classes/books/label'

module LabelModule
  def list_all_labels
    @labels = @label_data.load_labels
    if @labels.empty?
      puts 'There are no labels'
    else
      @labels.each_with_index do |label, i|
        puts "Number: #{i + 1}: \nTitle: #{label.title} \nColor: #{label.color}\n-------"
      end
    end
  end
end
