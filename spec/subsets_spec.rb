require "coding_challenges/subsets"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 2, 3]

    result = subsets(nums)

    expect(result).to contain_exactly([], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3])
  end

  it "2" do
    nums = [0]

    result = subsets(nums)

    expect(result).to contain_exactly([], [0])
  end

  it "3" do
    nums = [5, 4]

    result = subsets(nums)

    expect(result).to contain_exactly([], [5], [4], [5, 4])
  end
end
