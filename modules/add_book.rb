require_relative '../label'
require_relative '../book'

module AddBook
  def add_a_book
    puts 'Please enter the publisher of the book: '
    publisher = gets.chomp

    puts 'Please enter the cover state of the book: '
    cover_state = gets.chomp

    puts 'Please enter publish date of the book [Date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    puts 'Please enter the title of the label: '
    title = gets.chomp

    puts 'Please enter the color of the label'
    color = gets.chomp

    label = Label.new(title, color)
    book = Book.new(publisher, cover_state, publish_date)
    book.label = label
    @books.push(book)

    puts 'Book added successfully!'
  end
end
