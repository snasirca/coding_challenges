require "coding_challenges/single_number"

RSpec.describe "Solution" do
  it "1" do
    nums = [2, 2, 1]

    result = single_number(nums)

    expect(result).to eq(1)
  end

  it "2" do
    nums = [4,1,2,1,2]

    result = single_number(nums)

    expect(result).to eq(4)
  end

  it "3" do
    nums = [1]

    result = single_number(nums)

    expect(result).to eq(1)
  end
end
