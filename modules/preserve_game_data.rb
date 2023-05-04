module GameData
  def save_game_data
    games_data = @games.map(&:to_hash)
    File.write('data/books.json', JSON.pretty_generate(books_data))
  end

  def load_game_data
    return [] unless File.exist?('data/games.json')

    JSON.parse(File.read('data/games.json')).map do |match|
      auhor = Label.new(match['label']['title'], match['label']['color'])
      game = Game.new(match['publish_date'], match['last_played_date'], match['multiplayer'])
      game.author = author
      game
    end
  end
end
