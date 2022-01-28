require "coding_challenges/contains_duplicate"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 2, 3, 1]

    result = contains_duplicate(nums)

    expect(result).to eq(true)
  end

  it "2" do
    nums = [1, 2, 3, 4]

    result = contains_duplicate(nums)

    expect(result).to eq(false)
  end

  it "3" do
    nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

    result = contains_duplicate(nums)

    expect(result).to eq(true)
  end
end
