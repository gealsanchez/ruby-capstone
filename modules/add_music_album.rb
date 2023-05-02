require_relative '../genre'
require_relative '../music_album'

module AddMusicAlbum
  def add_a_amusic
    print 'Genre : '
    name = gets.chomp

    print 'Name : '
    album_name = gets.chomp

    print 'On spotify? Y/N : '
    on_spotify = gets.chomp.downcase[0..1] == 'y'

    print 'Album publish date (DD/MM/YYYY) : '
    publish_date = gets.chomp

    genre = Genre.new(name)
    album = MusicAlbum.new(album_name, on_spotify, publish_date)
    album.genre = genre
    @music_albums.push(album)
    puts 'Music album added successfully'
  end
end
