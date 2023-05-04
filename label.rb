require './item'

class Label
  attr_accessor :title, :color, :items
  attr_reader :id

  def initialize(title, color, items: [])
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = items
  end

  def add_item(item)
    return if @items.include?(item)

    @items << item
    item.genre = self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
