require_relative '../item'
require_relative '../gener'

describe Genre do
  let(:item1) { Item.new(Date.new(2000, 10, 10).to_s) }
  let(:item2) { Item.new(Date.new(2001, 10, 10).to_s) }

  describe '#add_item' do
    it 'should add the item to the items collection' do
      genre = Genre.new('gifted hands')
      genre.add_item(item1)
      expect(genre.items).to eq([item1])
    end

    it 'test setting of the item genre to itself' do
      genre = Genre.new('gifted hands')
      genre.add_item(item1)
      expect(item1.genre).to eq(genre)
    end

    it 'should not add duplicates to the items collection' do
      genre = Genre.new('gifted hands')
      genre.add_item(item1)
      expect(genre.items).to eq([item1])
    end
  end
end
