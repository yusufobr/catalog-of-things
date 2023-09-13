require 'json'
require_relative '../classes/music/music_album'

class MusicManager
  DATA_FOLDER = 'JSON/'.freeze

  def obtain_music_album
    return [] unless File.exist?("#{DATA_FOLDER}music_album.json")

    JSON.parse(File.read("#{DATA_FOLDER}music_album.json"))
    music_albums = []
    data['Albums'].map do |music_album_data|
      music_albums << MusicAlbum.new(music_album_data['publish_date'], music_album_data['on_spotify'])
    end
    music_albums
  end

  def save_music_album(_songs)
    File.write("#{DATA_FOLDER}music_album.json", JSON.pretty_generate(data))
  end
end
