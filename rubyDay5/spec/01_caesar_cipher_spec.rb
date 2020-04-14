require_relative '../lib/01_caesar_cipher'

describe "the shift_car method" do
  it "should shift alphabet letters " do
    expect(shift_char('a', 3)).to eq('d')
    expect(shift_char('Z', 2)).to eq('B')
  end
  it "should not shift other letters " do
    expect(shift_char('!', 2)).to eq('!')
  end
end

describe "the caesar_cipher method" do
  it "should shift phrase correctly for" do
    expect(caesar_cipher("union", 6)).to eq("atout")
    expect(caesar_cipher("ab cd EF", 3)).to eq("de fg HI")
  end
end


