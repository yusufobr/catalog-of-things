require_relative '../classes/music/music_album'
require_relative '../classes/item'


describe MusicAlbum do
  it '#add album item' do
    date = '2020-08-08'
    album = MusicAlbum.new(date)
    expect(album.publish_date).to eq(date)
  end

  it 'return true while on spotify and earlire than 10yrs' do
    test_item = MusicAlbum.new('2020-08-08', on_spotify: true)
    expect(test_item.can_be_archived?).to eq(false)
  end
end
