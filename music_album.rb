require './item'

class MusicAlbum < Item
  attr_accessor :aname, :on_spotify

  def initialize(aname, on_spotify, publish_date)
    @aname = aname
    @on_spotify = on_spotify
    super(publish_date)
  end

  def can_be_archived?
    super && on_spotify
  end

  def to_hash
    {
      aname: @aname,
      on_spotify: @on_spotify,
      publish_date: @publish_date,
      genre: { name: genre.name }
    }
  end
end
