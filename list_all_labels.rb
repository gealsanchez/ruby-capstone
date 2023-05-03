def list_all_labels
  puts 'Labels: '
  if @labels.empty?
    puts "\nNo labels added"
  else
    @labels.each_with_index do |label, index|
      puts "[Label #{index + 1}]. Title : #{label.title}, Color : #{label.color}"
    end
  end
end
