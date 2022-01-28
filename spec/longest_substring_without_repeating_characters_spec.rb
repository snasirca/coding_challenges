require "coding_challenges/longest_substring_without_repeating_characters"

RSpec.describe "Solution" do
  it "1" do
    s = ""

    result = length_of_longest_substring(s)

    expect(result).to eq(0)
  end

  it "2" do
    s = "a"

    result = length_of_longest_substring(s)

    expect(result).to eq(1)
  end

  it "3" do
    s = "abcabcbb"

    result = length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "4" do
    s = "bbbbb"

    result = length_of_longest_substring(s)

    expect(result).to eq(1)
  end

  it "5" do
    s = "pwwkew"

    result = length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "6" do
    s = "aj;slkdfja;plo   sieyrlkj;alskdj;alskdfj;alskdjf"

    result = length_of_longest_substring(s)

    expect(result).to eq(11)
  end

  it "7" do
    s = "aab"

    result = length_of_longest_substring(s)

    expect(result).to eq(2)
  end

  it "8" do
    s = "dvdfdvdfdvdfdvdf"

    result = length_of_longest_substring(s)

    expect(result).to eq(3)
  end

  it "9" do
    s = "bbtablud"

    result = length_of_longest_substring(s)

    expect(result).to eq(6)
  end

  it "10" do
    s = "bpfbhmipx"

    result = length_of_longest_substring(s)

    expect(result).to eq(7)
  end
end
