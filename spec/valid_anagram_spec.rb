require "coding_challenges/valid_anagram"

RSpec.describe CodingChallenges::ValidAnagram do
  subject { CodingChallenges::ValidAnagram.new }

  it "1" do
    s = "anagram"
    t = "nagaram"

    result = subject.is_anagram(s, t)

    expect(result).to eq(true)
  end

  it "2" do
    s = "rat"
    t = "car"

    result = subject.is_anagram(s, t)

    expect(result).to eq(false)
  end

  it "3" do
    s = "a"
    t = "a"

    result = subject.is_anagram(s, t)

    expect(result).to eq(true)
  end

  it "4" do
    s = "a"
    t = "b"

    result = subject.is_anagram(s, t)

    expect(result).to eq(false)
  end

  it "5" do
    s = "a"
    t = "ab"

    result = subject.is_anagram(s, t)

    expect(result).to eq(false)
  end
end
