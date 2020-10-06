require_relative '../caesar_cipher'

describe '#caesar_cipher' do
  it 'When given a simple string' do
    expect(caesar_cipher('abc', 1)).to eql('bcd')
  end

  it 'When given a simple uppercase string' do
    expect(caesar_cipher('ABC', 1)).to eql('BCD')
  end

  it 'When given a string with up and down case' do
    expect(caesar_cipher('aBC', 1)).to eql('bCD')
  end

  it 'When given a string with blank space' do
    expect(caesar_cipher('Hel lo', 1)).to eql('Ifm mp')
  end

  it 'When given a long string' do
    expect(caesar_cipher('Hello my name is', 5)).to eql('Mjqqt r sfrj nx')
  end
end
