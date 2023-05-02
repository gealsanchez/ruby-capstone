class Label
    attr_accessor :id, :title, :color, :items
  
    def initialize(title, color, items: [])
      @id = Random.rand(1...1000)
      @title = title
      @color = color
      @items = items
    end
  
    def add_item(item)
      item.label = self
      @items.push(item)
    end
  
  end
  