require "coding_challenges/contains_duplicate"

RSpec.describe CodingChallenges::ContainsDuplicate do
  subject { CodingChallenges::ContainsDuplicate.new }

  it "1" do
    nums = [1, 2, 3, 1]

    result = subject.contains_duplicate(nums)

    expect(result).to eq(true)
  end

  it "2" do
    nums = [1, 2, 3, 4]

    result = subject.contains_duplicate(nums)

    expect(result).to eq(false)
  end

  it "3" do
    nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

    result = subject.contains_duplicate(nums)

    expect(result).to eq(true)
  end
end
