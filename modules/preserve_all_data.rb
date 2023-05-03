require_relative './preserve_music_data'
require_relative './preserve_book_data'

module PreserveAllData
  def preserve_data
    save_music_data
    save_book_data
  end
end
