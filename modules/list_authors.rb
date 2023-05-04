require 'set'

module ListAuthors
  def list_all_authors
    puts 'Authors:'
    authors = Set.new
    @games.each do |game|
      authors << "#{game.author.first_name} #{game.author.last_name}"
    end
    authors.each do |author|
      puts "- #{author}"
    end
  end
end
