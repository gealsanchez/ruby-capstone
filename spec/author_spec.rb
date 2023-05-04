require_relative '../author'
require_relative '../item'

describe Author do
  context 'Create a Author instance and test its methods' do
    author = Author.new('Jose', 'Montoya')
    it 'Should return an author with first name Jose and Last name Montoya' do
      expect(author.first_name).to eq 'Jose'
      expect(author.last_name).to eq 'Montoya'
    end

    it 'The items array inside author should have a length of 1 because we are adding the same item twice' do
      item = Item.new('02/02/2010')
      author.add_item(item)
      author.add_item(item)
      expect(author.items.length).to eq 1
    end
  end
end
