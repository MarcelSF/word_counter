require_relative '../word_counter'

describe "#word_counter" do
  it "returns an empty string if text is an empty string" do
    actual = word_counter('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it "correctly counts the number of words in a text" do
    the_frequencies = word_counter('the lazy dog jumped over the brown fox')
    expect(the_frequencies["the"]).to eq(2)
    expect(the_frequencies["dog"]).to eq(1)
    expect(the_frequencies["cat"]).to eq(0)
  end
end
