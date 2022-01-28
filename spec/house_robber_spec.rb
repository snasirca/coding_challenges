require "coding_challenges/house_robber"

RSpec.describe "Solution" do
  it "1" do
    nums = [1]

    result = rob(nums)

    expect(result).to eq(1)
  end

  it "2" do
    nums = [1, 2]

    result = rob(nums)

    expect(result).to eq(2)
  end

  it "3" do
    nums = [1, 2, 3, 1]

    result = rob(nums)

    expect(result).to eq(4)
  end

  it "4" do
    nums = [2, 7, 9, 3, 1]

    result = rob(nums)

    expect(result).to eq(12)
  end

  it "5" do
    nums = [2, 7, 9, 3, 1, 20]

    result = rob(nums)

    expect(result).to eq(31)
  end
end
