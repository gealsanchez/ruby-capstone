require './item'

class Genre
  attr_accessor :name, :items
  attr_reader :id

  def initialize(name)
    @id = Random.rand(1..100)
    @name = name
    @items = []
  end
end
