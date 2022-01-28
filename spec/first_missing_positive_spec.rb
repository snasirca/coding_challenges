require "coding_challenges/first_missing_positive"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 2, 0]

    result = first_missing_positive(nums)

    expect(result).to eq(3)
  end

  it "2" do
    nums = [3, 4, -1, 1]

    result = first_missing_positive(nums)

    expect(result).to eq(2)
  end

  it "3" do
    nums = [7, 8, 9, 11, 12]

    result = first_missing_positive(nums)

    expect(result).to eq(1)
  end

  it "4" do
    nums = [1]

    result = first_missing_positive(nums)

    expect(result).to eq(2)
  end

  it "5" do
    nums = [1, 2]

    result = first_missing_positive(nums)

    expect(result).to eq(3)
  end
end
