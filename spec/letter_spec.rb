RSpec.describe GreekABC::Letter do
  describe '#new' do
    it 'creates a letter with a single lowercase variant' do
      letter = GreekABC::Letter.new(
        position: 1, name: 'Alpha', lower: 'α', upper: 'α'.upcase
      )

      expect(letter.position).to eq(1)
      expect(letter.lower_alt).to eq(nil)
    end

    it 'creates a letter with two lowercase variants' do
      letter = GreekABC::Letter.new(
        position: 1, name: 'Sigma', lower: 'σ', lower_alt: 'ς', upper: 'σ'.upcase
      )

      expect(letter.lower).to eq('σ')
      expect(letter.lower_alt).to eq('ς')
    end
  end
end
