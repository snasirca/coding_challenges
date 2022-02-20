require "coding_challenges/count_array_pairs_divisible_by_k"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 2, 3, 4, 5]
    k = 2

    result = cout_pairs(nums, k)

    expect(result).to eq(7)
  end

  it "2" do
    nums = [1, 2, 3, 4]
    k = 5

    result = cout_pairs(nums, k)

    expect(result).to eq(0)
  end
end
