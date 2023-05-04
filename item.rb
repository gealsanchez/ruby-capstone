require 'date'

class Item
  attr_reader :id, :genre, :label, :author
  attr_accessor :publish_date, :archived, :source

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_source(source)
    @source = source
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def can_be_archived?
    current_date = Date.today
    year = current_date.year - @publish_date.year
    year >= 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
