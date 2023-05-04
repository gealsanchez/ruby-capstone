require 'set'

module ListAllLabels
  def list_all_labels
    puts 'Labels:'
    labels = Set.new
    @books.each do |book|
      labels << book.label.title.to_s
    end
    labels.each do |label|
      puts "- #{label}"
    end
  end
end
