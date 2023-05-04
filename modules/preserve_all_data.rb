require_relative './preserve_music_data'
require_relative './preserve_book_data'
require_relative './preserve_game_data'

module PreserveAllData
  def preserve_data
    save_music_data
    save_book_data
    save_game_data
  end
end
