module ListAllGames
  def list_all_games
    puts 'List of Games:'
    @games.each do |game|
      puts "- #{game.publish_date}"
    end
  end
end
