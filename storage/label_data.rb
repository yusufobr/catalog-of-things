require 'json'
require_relative '../classes/books/label'

class LabelManager
  DATA_FOLDER = 'json/'.freeze
  JSON_FILE = "#{DATA_FOLDER}label.json".freeze

  def load_labels
    return [] unless File.exist?(JSON_FILE)

    data = JSON.parse(File.read(JSON_FILE))
    data['Labels'].map { |label_data| Label.new(label_data['title'], label_data['color']) }
  end
end
