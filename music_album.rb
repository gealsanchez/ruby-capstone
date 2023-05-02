require'./item'

class MusicAlbum < Item
  attr_accessor :aname, :on_spotify

  def initialize(aname, on_spotify, publish_date)
    @aname = aname
    @on_spotify = on_spotify
    super(publish_date)
  end
end
