def add_label
  puts 'Please enter the title of the label: '
  title = gets.chomp

  puts 'Please enter the color of the label: '
  color = gets.chomp

  label = Label.new(title, color)

  @labels.push(label)
  item = add_item
  item.add_label(label)

  puts 'Label added successfully!'
end
