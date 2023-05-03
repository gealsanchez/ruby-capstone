require 'json'

# modules
require_relative './modules/menu'
require_relative './modules/list_all_music_albums'
require_relative './modules/list_all_geners'
require_relative './modules/add_music_album'
require_relative './modules/preserve_all_data'

ACTIONS = {
  1 => :list_all_musics,
  2 => :list_all_genres,
  3 => :add_a_music
}.freeze

class App
  def initialize
    @music_albums = load_music_data
  end

  include Menu
  include AddMusicAlbum
  include ListAllGenres
  include ListAllMusics
  include MusicAlbumData
  include PreserveAllData

  def run
    choice = 0

    while choice != 5
      desplay_menu
      choice = gets.chomp.to_i

      if choice == 4
        puts " \n Thanks for using catalog\n"
        preserve_data
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
