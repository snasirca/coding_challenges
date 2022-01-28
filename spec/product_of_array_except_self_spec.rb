require "coding_challenges/product_of_array_except_self"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 2, 3, 4]

    result = product_except_self(nums)

    expect(result).to eq([24, 12, 8, 6])
  end

  it "2" do
    nums = [1, 2]

    result = product_except_self(nums)

    expect(result).to eq([2, 1])
  end

  it "3" do
    nums = [0, 0]

    result = product_except_self(nums)

    expect(result).to eq([0, 0])
  end
end
