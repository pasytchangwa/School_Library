require_relative 'import_spec'

describe Book do
  before :each do
    @book = Book.new('Game of thrones', 'Shake Spear')
  end

  describe '#new' do
    it 'takes two parameters and returns a book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#rentals' do
    it 'returns a has-many Rental relationship' do
      expect(@book).do have_attributes('rentals' => [])
    end
  end

  describe '#author' do
    it 'returns the correct author' do
      expect(@book.author).to eq 'Shake Spear'
    end
  end

  describe '#title' do
    it 'returns the correct title' do
      expect(@book.title).to eq 'Game of thrones'
    end
  end
end
