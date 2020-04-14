require_relative '../lib/00_multiples'

describe "the is_mul_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_mul_3_or_5?(3)).to eq(true)
    expect(is_mul_3_or_5?(5)).to eq(true)
    expect(is_mul_3_or_5?(51)).to eq(true)
    expect(is_mul_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
    expect(is_mul_3_or_5?(4)).to eq(false)
    expect(is_mul_3_or_5?(16)).to eq(false)
    expect(is_mul_3_or_5?(2221)).to eq(false)
  end
    
end

describe "the sum_of_3_or_5_multiples method" do
  it "should return the correct values for" do
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
  end
  it "should get an Integer as input" do
    expect(sum_of_3_or_5_multiples("zero")).to eq("Envoie un entier stplease")
    expect(sum_of_3_or_5_multiples(true)).to eq("Envoie un entier stplease")
    expect(sum_of_3_or_5_multiples([15])).to eq("Envoie un entier stplease")
  end
end


