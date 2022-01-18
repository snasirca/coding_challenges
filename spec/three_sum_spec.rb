require "coding_challenges/three_sum"

RSpec.describe CodingChallenges::ThreeSum do
  subject { CodingChallenges::ThreeSum.new }

  it "1" do
    nums = [-1, 0, 1, 2, -1, -4]

    result = subject.three_sum(nums)

    expect(result).to contain_exactly([-1, -1, 2], [-1, 0, 1])
  end

  it "2" do
    nums = []

    result = subject.three_sum(nums)

    expect(result).to eq([])
  end

  it "3" do
    nums = [0]

    result = subject.three_sum(nums)

    expect(result).to eq([])
  end
end
