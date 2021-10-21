require_relative '../book'

describe Book do
  before :each do
    @book = Book.new('Game of thrones', 'Shake Spear')
  end

  describe '#new' do
    it 'takes two parameters and returns a Book object' do
      expect(@book).to be_an_instance_of(Book)
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

  # describe '#to_s' do
  #   it 'returns correct value from to_s method' do
  #     expect(@book.to_s).to eql('Title: Game of thrones, Author: Shake Spear'
  #   end
  # end
end
