require_relative '../person'
require_relative '../teacher'
require_relative '../student'

describe Person do

  describe '#new' do
    person = Person.new(name: 'Sylvestre', age: 10, parent_permission: false)
    it 'takes 3 parameters and returns a Person obect' do
      expect(person).to be_an_instance_of Person
    end

    it 'should set the correct name' do
      expect(person.name).to eql 'Sylvestre'
    end
  end

  describe '#can_use_services?' do
    it 'should be registered only if the parent permission' do
      person = Person.new(name: 'Caleb', age: 21, parent_permission: true)
       expect(person.can_use_services?).to be(true)
    end
  end
end
