require "coding_challenges/three_sum"

RSpec.describe "Solution" do
  it "1" do
    nums = [-1, 0, 1, 2, -1, -4]

    result = three_sum(nums)

    expect(result).to contain_exactly([-1, -1, 2], [-1, 0, 1])
  end

  it "2" do
    nums = []

    result = three_sum(nums)

    expect(result).to eq([])
  end

  it "3" do
    nums = [0]

    result = three_sum(nums)

    expect(result).to eq([])
  end
end
