RSpec.describe GreekABC::Alphabet do
  subject(:alphabet) { GreekABC::Alphabet.new }
  let(:alphabet_correct_size) { 24 }

  describe '#letters' do
    it 'returns a full array of all letters (Array<Letter>)' do
      letters = alphabet.letters

      expect(letters.size).to eq(alphabet_correct_size)
    end
  end

  describe '#to_h' do
    it 'returns a hash represention of alphabet with all letter attributes' do
      hash = alphabet.to_h

      expect(hash).to include(
        'Alpha' => { position: 1, lower: 'α', lower_alt: nil, upper: 'Α' },
        'Sigma' => { position: 18, lower: 'σ', lower_alt: 'ς', upper: 'Σ' },
        'Omega' => { position: 24, lower: 'ω', lower_alt: nil, upper: 'Ω' }
      )
    end
  end

  describe '#find_letter' do
    it 'returns a Letter instance fitting lookup params' do
      letter = alphabet.find_letter(name: 'Sigma')

      expect(letter).to be_a(GreekABC::Letter)
      expect(letter.name).to eq('Sigma')
    end
  end
end
