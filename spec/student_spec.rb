require_relative '../student'
require_relative '../classroom'

describe Student do
  before :each do
    @classroom = Classroom.new('Ruby class')
    @student = Student.new(age: 20, classroom: @classroom, name: 'Johm')
  end

  describe '#name' do
    it 'returns correct name' do
      expect(@student.name).to eql 'Johm'
    end
  end

  # describe '#id' do
  #   it 'returns student id'
  #   expect(@student.id).to be_kind_of Numeric
  # end

  describe '#classroom' do
    it 'returns classroom of student' do
      expect(@student.classroom).to eql @classroom
    end
  end

  describe '#to_s' do
    it 'returns student info' do
      expect(@student.to_s).to be_kind_of String
    end
  end
end
