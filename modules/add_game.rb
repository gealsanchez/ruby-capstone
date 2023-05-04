require_relative '../author'
require_relative '../game'

module AddGame
  def add_a_game
    puts 'Please type the word multiplayer: '
    puts 'Is the game a multiplayer one? [Y/N]: '
    multiplayer = gets.chomp.to_s.downcase == 'y'

    puts 'Please enter publish date of the game [Date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    puts 'Please enter last played date [Date in format (yyyy-mm-dd)]'
    last_played_date = gets.chomp

    print 'Enter the first name of the author: '
    first_name = gets.chomp
    print 'Enter the last name of the author: '
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    game = Game.new(publish_date, last_played_date, multiplayer)
    game.author = author
    @games.push(game)
  end

  puts 'Game added successfully!'
end
