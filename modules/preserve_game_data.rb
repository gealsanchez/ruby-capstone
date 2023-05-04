module GameData
  def save_game_data
    games_data = @games.map(&:to_hash)
    File.write('data/games.json', JSON.pretty_generate(games_data))
  end

  def load_game_data
    return [] unless File.exist?('data/games.json')

    JSON.parse(File.read('data/games.json')).map do |match|
      author = Author.new(match['author']['first_name'], match['author']['last_name'])
      game = Game.new(match['publish_date'], match['last_played_date'], match['multiplayer'])
      game.author = author
      game
    end
  end
end
