require 'json'

# classes

require_relative './author'
require_relative './game'

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
require_relative './modules/list_all_games'
require_relative './modules/add_game'

ACTIONS = {
  1 => :list_all_musics,
  2 => :list_all_genres,
  3 => :add_a_music,
  4 => :list_all_book,
  5 => :list_all_labels,
  6 => :add_a_book,
  7 => :list_all_authors,
  8 => :list_all_games,
  9 => :add_a_game
}.freeze

class App
  def initialize
    @music_albums = load_music_data
    @books = load_books_data
    @games = load_game_data
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
  include ListAllGames
  include GameData
  include AddGame

  def run
    choice = 0

    while choice != 11
      desplay_menu
      choice = gets.chomp.to_i

      if choice == 10
        puts " \n Thanks for using catalog\n"
        preserve_data
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
