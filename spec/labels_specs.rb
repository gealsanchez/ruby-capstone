require_relative '../item'
require_relative '../label'

describe Label do
  let(:item1) { Item.new(Date.new(2000, 10, 10).to_s) }

  describe '#add_item' do
    it 'should add the item to the items collection' do
      label = Label.new('amazon', 'green')
      label.add_item(item1)
      expect(label.items).to eq([item1])
    end

    it 'test setting of the item genre to itself' do
      label = Label.new('amazon', 'green')
      label.add_item(item1)
      expect(item1.genre).to eq(label)
    end

    it 'should not add duplicates to the items collection' do
      label = Label.new('amazon', 'green')
      label.add_item(item1)
      expect(label.items).to eq([item1])
    end
  end
end
