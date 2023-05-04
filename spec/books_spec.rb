require_relative '../book'

describe Book do
  before :each do
    @book = Book.new('Pendant', 'Vintage', '2023-01-01')
  end

  it 'is an instance of Book' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'checks book publisher' do
    expect(@book.publisher).to eq 'Pendant'
  end

  it 'checks book author' do
    expect(@book.cover_state).to eq 'Vintage'
  end

  it 'checks book archived' do
    expect(@book.archived).to eq false
  end
end
