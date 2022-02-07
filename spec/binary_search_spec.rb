require "coding_challenges/binary_search"

RSpec.describe "Solution" do
  it "4" do
    nums = [2, 5]
    target = 5

    result = search(nums, target)

    expect(result).to eq(1)
  end

  it "3" do
    nums = [5]
    target = 5

    result = search(nums, target)

    expect(result).to eq(0)
  end

  it "2" do
    nums = [-1, 0, 3, 5, 9, 12]
    target = 2

    result = search(nums, target)

    expect(result).to eq(-1)
  end

  it "1" do
    nums = [-1, 0, 3, 5, 9, 12]
    target = 9

    result = search(nums, target)

    expect(result).to eq(4)
  end
end
