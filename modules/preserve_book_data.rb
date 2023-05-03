module BookData
  def save_book_data
    books_data = @books.map(&:to_hash)
    File.write('data/books.json', JSON.pretty_generate(books_data))
  end

  def load_books_data
    return [] unless File.exist?('data/books.json')

    JSON.parse(File.read('data/books.json')).map do |publication|
      label = Label.new(publication['label']['title'], publication['label']['color'])
      book = Book.new(publication['publisher'], publication['cover_state'], publication['publish_date'])
      book.label = label
      book
    end
  end
end
