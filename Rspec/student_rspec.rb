require_relative 'import_spec'

describe Student do
  before :each do
    @classroom = Classroom.new('Ruby class')
    @student = Student.new(age: 20, classroom: @classroom)
  end

  describe '#new' do
    it 'takes 2 required parameters and returns a Student object'
      expect(@student).to be_an_instance_of Student
    end

    it 'should be added to the correct classroom' do
      expect(@student.classroom).to eq @classroom
    end
  end

  describe '#play_hooky' do
    it 'should print the correct message' do
      expect(@student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end
