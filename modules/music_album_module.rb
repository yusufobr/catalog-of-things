require_relative '../classes/music/music_album'

module MusicAlbumModule
  def create_music_album(publish_date, on_spotify)
    album = MusicAlbum.new(publish_date, on_spotify)
    @albums << album

    save_to_file(@albums)
  end

  def list_music_albums
    if @albums.empty?
      puts 'The music album is empty'
    else
      @albums.each_with_index do |album, i|
        puts "#{i + 1}) album on spotify?: #{album.on_spotify}, Publish Date: #{album.publish_date}"
      end
    end
  end

  def save_to_file(music)
    @music_data.save_music(music)
  end
end
