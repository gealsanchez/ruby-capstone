def list_all_books
  puts 'Books: '
  if @books.empty?
    puts "\nNo books added"
  else
    @books.each_with_index do |book, index|
      puts "[Book #{index + 1}]. Publisher : #{book.publisher},+
      Publish Date : #{book.publish_date}, Cover State : #{book.cover_state}"
    end
  end
end
