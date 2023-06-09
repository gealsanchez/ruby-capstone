require_relative './item'
require 'date'
require 'json'

class Game < Item
  attr_reader :id
  attr_accessor :multiplayer, :last_played_at, :publish_date

  def initialize(publish_date, last_played_at, multiplayer)
    super(publish_date)
    @id = Random.rand(1...1000)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?()
    super && (DateTime.now - Date.parse(last_played_at)).to_i / 365 > 2
  end

  def to_hash
    {
      publish_date: @publish_date,
      multiplayer: @multiplayer,
      last_played_at: @last_played_at,
      author: { first_name: author.first_name, last_name: author.last_name }
    }
  end
end
