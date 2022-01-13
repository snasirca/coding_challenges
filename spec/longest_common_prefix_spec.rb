require "coding_challenges/longest_common_prefix"

RSpec.describe CodingChallenges::LongestCommonPrefix do
  subject { CodingChallenges::LongestCommonPrefix.new }

  it "1" do
    strs = ["flower","flow","flight"]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("fl")
  end

  it "2" do
    strs = ["flow","flow","flow"]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("flow")
  end

  it "3" do
    strs = ["dog", "racecar", "car"]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("")
  end

  it "4" do
    strs = ["flow","flowed","flower"]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("flow")
  end

  it "5" do
    strs = ["","flowed","flower"]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("")
  end

  it "6" do
    strs = ["","",""]

    result = subject.longest_common_prefix(strs)

    expect(result).to eq("")
  end
end
