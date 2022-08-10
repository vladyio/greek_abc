RSpec.describe GreekABC do
  it 'has a version number' do
    expect(GreekABC::VERSION).not_to be nil
  end

  it 'produces letter with all parameteres' do
    letter = GreekABC::Letter.new(position: 0, name: 'alpha', lower: 'α',
                                  upper: 'α'.upcase)

    expect(letter.position).to eq(0)
    expect(letter.name).to eq('alpha')
    expect(letter.lower).to eq('α')
    expect(letter.upper).to eq('α'.upcase)
  end

  it 'available to find a letter by every parameter' do
    eta_params = {
      position: 7,
      name: 'Eta',
      lower: 'η',
      upper: 'Η'
    }
    abc = GreekABC::Alphabet.new

    expect(abc.find_letter_by(position: eta_params[:position]).name).to eq(eta_params[:name])
    expect(abc.find_letter_by(name: eta_params[:name]).position).to eq(eta_params[:position])
    expect(abc.find_letter_by(lower: eta_params[:lower]).position).to eq(eta_params[:position])
    expect(abc.find_letter_by(upper: eta_params[:upper]).position).to eq(eta_params[:position])
  end

  it 'letter name lookup is case insensitive' do
    abc = GreekABC::Alphabet.new
    expect(abc.find_letter_by(name: 'lambda')).to eq(abc.find_letter_by(name: 'Lambda'))
  end
end
