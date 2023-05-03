def add_book
  puts 'Please enter the publisher of the book: '
  publisher = gets.chomp

  puts 'Please enter the cover state of the book: '
  cover_state = gets.chomp

  puts 'Please enter publish date of the book [Date in format (yyyy-mm-dd)]'
  publish_date = gets.chomp

  book = Book.new(publisher, cover_state, publish_date)

  @books.push(book)

  puts 'Book added successfully!'
end
