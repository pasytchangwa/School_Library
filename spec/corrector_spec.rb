require_relative '../corrector'

describe Corrector do
  before :each do
    @corrector = Corrector.new
  end

  describe '#correct_name' do
    context 'with downcase name' do
      it 'returns a Capitalize name' do
        expect(@corrector.correct_name('sylvestree')).to eq 'Sylvestree'
      end
    end

    context 'with more than 10 characters' do
      it 'returns a name 10 characters long' do
        expect(@corrector.correct_name('sylvestree pagkeu')).to eq 'Sylvestree'
      end
    end
  end
end
