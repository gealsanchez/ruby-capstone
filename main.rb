class Main
  def initialize
    puts 'Catalog of my things'
  end

  def menu
    puts 'Please select an option by entering a number:'
    puts '1 - List all music albums'
    puts '2 - List all genres'
    puts '3 - List all books'
    puts '4 - List all labels'
    puts '5 - Add a music album'
    puts '6 - Add a book'
    puts '7 - Exit'
  end
  def run
    puts ''
    menu
    selected = gets.chomp.to_i
    puts ''
    puts "You choose option #{selected}"
    case selected
    when 1..7
      puts "You option is correct and will be implemented later"
    else
      puts 'Please choose a valid option:'
    end
    run
  end
end

main = Main.new
main.run
