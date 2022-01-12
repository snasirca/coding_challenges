require "coding_challenges/first_unique_character_in_a_string"

RSpec.describe CodingChallenges::FirstUniqueCharacterInAString do
  subject { CodingChallenges::FirstUniqueCharacterInAString.new }

  it "1" do
    s = "leetcode"

    result = subject.first_uniq_char(s)

    expect(result).to eq(0)
  end

  it "2" do
    s = "loveleetcode"

    result = subject.first_uniq_char(s)

    expect(result).to eq(2)
  end

  it "3" do
    s = "aabb"

    result = subject.first_uniq_char(s)

    expect(result).to eq(-1)
  end
end
