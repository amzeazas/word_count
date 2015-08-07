require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts the number of times a word appears in a multiple word string") do
    expect(("what is my name").word_count("is")).to(eq(1))
  end
  it("handles all uppercase entries") do
    expect(("WHAT IS MY NAME").word_count("is")).to(eq(1))
  end
end
