module ListAllBooks
  def list_all_book
    puts 'List of Books:'
    @books.each do |book|
      puts "- #{book.publisher}"
    end
  end
end
