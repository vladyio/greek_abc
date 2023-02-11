RSpec.describe GreekABC::LetterLookup do
  let(:letters) { GreekABC::Alphabet.new.letters }
  subject(:lookup) { GreekABC::LetterLookup.new(letters) }

  let(:correct_params) { Hash[:name, 'Omega'] }
  let(:incorrect_attr) { :location }
  let(:incorrect_attr_value) { 100 }

  describe '#find_letter' do
    it 'returns a matching letter for correct & existing param/value' do
      result = lookup.find_letter(**correct_params)

      expect(result).to be_a(GreekABC::Letter)
      expect(result.position).to eq(letters.size)
    end

    it 'raises a LetterLookupParamsError with an unexisting letter attribute' do
      expect do
        lookup.find_letter(**Hash[incorrect_attr, incorrect_attr_value])
      end.to raise_error(GreekABC::LetterLookupParamsError)
    end

    it 'raises a LetterNotFoundError with for an unexisting value' do
      expect do
        lookup.find_letter(**Hash[:position, incorrect_attr_value])
      end.to raise_error(GreekABC::LetterNotFoundError)
    end
  end
end
