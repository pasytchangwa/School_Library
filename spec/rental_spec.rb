require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe Rental do
  describe '#new' do
    book = Book.new('Game of throne', 'Shekspire')
    person = Person.new(name: 'moses', age: 25, parent_permission: true)
    rental = Rental.new('2021/10/21', person, book)
    it 'returns a Rental object' do
      expect(rental).to be_an_instance_of Rental
    end
    it 'should set the correct book' do
      expect(rental.book).to eql book
    end
    it 'should set the correct person' do
      expect(rental.person).to eql person
    end
    it 'should set the correct date' do
      expect(rental.date).to eql '2021/10/21'
    end
    it 'should check for a new rental in person' do
      expect(person.rentals).to include(rental)
    end
    it 'should check a new rented book' do
      expect(book.rentals).to include(rental)
    end
  end
end
