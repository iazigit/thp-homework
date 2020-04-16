require_relative '../lib/00_dark_trader'


describe "the method to get data" do
  it "returns something" do
    expect(getData()).to_not be nil
  end
  it 'returns 200 results' do
        expect(getData().length).to equal(200)
  end
end

