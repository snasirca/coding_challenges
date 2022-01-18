require "coding_challenges/longest_substring_without_repeating_characters"

RSpec.describe CodingChallenges::LongestSubstringWithoutRepeatingCharacters do
  subject { CodingChallenges::LongestSubstringWithoutRepeatingCharacters.new }

  it "1" do
    s = ""

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(0)
  end

  it "2" do
    s = "a"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(1)
  end

  it "3" do
    s = "abcabcbb"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "4" do
    s = "bbbbb"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(1)
  end

  it "5" do
    s = "pwwkew"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "6" do
    s = "aj;slkdfja;plo   sieyrlkj;alskdj;alskdfj;alskdjf"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(11)
  end

  it "7" do
    s = "aab"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(2)
  end

  it "8" do
    s = "dvdfdvdfdvdfdvdf"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "9" do
    s = "bbtablud"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(6)
  end

  it "10" do
    s = "bpfbhmipx"

    result = subject.length_of_longest_substring(s)

    expect(result).to eq(7)
  end
end
