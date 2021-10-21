require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Ruby class')
  end

  describe '#new' do
    it 'takes one parameter and returns a Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it 'returns the correct label' do
      expect(@classroom.label).to eql 'Ruby class'
    end
  end
end
