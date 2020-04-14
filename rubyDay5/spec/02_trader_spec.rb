require_relative '../lib/02_trader'

describe "the day_trader method" do
  it "should return 1,4 for the example" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end

