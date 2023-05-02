module MusicAlbumData
  def save_music_data
    music_albums_data = @music_albums.map(&:to_hash)
    File.write('data/music_albums.json', JSON.pretty_generate(music_albums_data))
  end

  def load_music_data
    return [] unless File.exist?('data/music_albums.json')

    JSON.parse(File.read('data/music_albums.json')).map do |music|
      genre = Genre.new(music['genre']['name'])
      music_album = MusicAlbum.new(music['aname'], music['on_spotify'], music['publish_date'])
      music_album.genre = genre
      music_album
    end
  end
end
