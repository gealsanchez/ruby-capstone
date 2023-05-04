require 'json'

# classes

require_relative './author'

# modules
require_relative './modules/menu'
require_relative './modules/list_all_music_albums'
require_relative './modules/list_all_geners'
require_relative './modules/add_music_album'
require_relative './modules/preserve_all_data'
require_relative './modules/add_book'
require_relative './modules/list_all_books'
require_relative './modules/list_all_labels'
require_relative './modules/list_authors'

ACTIONS = {
  1 => :list_all_musics,
  2 => :list_all_genres,
  3 => :add_a_music,
  4 => :list_all_book,
  5 => :list_all_labels,
  6 => :add_a_book,
  7 => :list_all_authors
}.freeze

class App
  def initialize
    @music_albums = load_music_data
    @books = load_books_data
  end

  include Menu
  include AddMusicAlbum
  include ListAllGenres
  include ListAllMusics
  include MusicAlbumData
  include PreserveAllData
  include AddBook
  include ListAllLabels
  include ListAllBooks
  include BookData
  include ListAuthors

  def run
    choice = 0

    while choice != 9
      desplay_menu
      choice = gets.chomp.to_i

      if choice == 8
        puts " \n Thanks for using catalog\n"
        preserve_data
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
