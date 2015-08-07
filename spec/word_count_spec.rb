require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts the number of times a word appears in a multiple word string") do
    expect(("what is my name").word_count("is")).to(eq(1))
  end
  it("handles all uppercase entries") do
    expect(("WHAT IS MY NAME").word_count("is")).to(eq(1))
  end
  it("handles mixed case entries") do
    expect(("whAt IS my NAme").word_count("is")).to(eq(1))
  end
  it("handles non-letter characters") do
    expect(("whAt IS my NAme & name?").word_count("name")).to(eq(2))
  end
end
