require "coding_challenges/two_sum"

RSpec.describe "Solution" do
  it "1" do
    nums = [2, 7, 11, 15]
    target = 9

    result = two_sum(nums, target)

    expect(result).to eq([0, 1])
  end

  it "2" do
    nums = [3, 2, 4]
    target = 6

    result = two_sum(nums, target)

    expect(result).to eq([1, 2])
  end

  it "3" do
    nums = [3, 3]
    target = 6

    result = two_sum(nums, target)

    expect(result).to eq([0, 1])
  end

  it "4" do
    nums = [0, 4, 3, 0]
    target = 0

    result = two_sum(nums, target)

    expect(result).to eq([0, 3])
  end
end
