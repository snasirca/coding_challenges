require "coding_challenges/reverse_string"

RSpec.describe CodingChallenges::ReverseString do
  subject { CodingChallenges::ReverseString.new }

  it "1" do
    s = ["h", "e", "l", "l", "o"]

    result = subject.reverse_string(s)

    expect(result).to eq(["o", "l", "l", "e", "h"])
  end

  it "2" do
    s = ["H", "a", "n", "n", "a", "h"]

    result = subject.reverse_string(s)

    expect(result).to eq(["h", "a", "n", "n", "a", "H"])
  end

  it "3" do
    s = ["A", " ", "m", "a", "n", ",", " ", "a", " ", "p", "l", "a", "n", ",", " ", "a", " ", "c", "a", "n", "a", "l", ":", " ", "P", "a", "n", "a", "m", "a"]

    result = subject.reverse_string(s)

    expect(result).to eq(
      ["a", "m", "a", "n", "a", "P", " ", ":", "l", "a", "n", "a", "c", " ", "a", " ", ",", "n", "a", "l", "p", " ", "a", " ", ",", "n", "a", "m", " ", "A"])
  end
end
