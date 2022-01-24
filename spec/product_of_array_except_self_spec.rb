require "coding_challenges/product_of_array_except_self"

RSpec.describe CodingChallenges::ProductOfArrayExceptSelf do
  subject { CodingChallenges::ProductOfArrayExceptSelf.new }

  it "1" do
    nums = [1, 2, 3, 4]

    result = subject.product_except_self(nums)

    expect(result).to eq([24, 12, 8, 6])
  end

  it "2" do
    nums = [1, 2]

    result = subject.product_except_self(nums)

    expect(result).to eq([2, 1])
  end

  it "3" do
    nums = [0, 0]

    result = subject.product_except_self(nums)

    expect(result).to eq([0, 0])
  end
end
