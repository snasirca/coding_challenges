require "coding_challenges/count_elements_with_strictly_smaller_and_greater_elements"

RSpec.describe "Solution" do
  it "1" do
    nums = [1]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "2" do
    nums = [1, 2]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "2 - b" do
    nums = [1, 1]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "3" do
    nums = [11, 7, 2, 15]

    result = count_elements(nums)

    expect(result).to eq(2)
  end

  it "4" do
    nums = [-3, 3, 3, 90]

    result = count_elements(nums)

    expect(result).to eq(2)
  end

  it "5" do
    nums = [3, 3, 3, 3]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "6" do
    nums = [2, 3, 3, 3]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "7" do
    nums = [3, 3, 3, 4]

    result = count_elements(nums)

    expect(result).to eq(0)
  end

  it "8" do
    nums = [-71, -71, 93, -71, 40]

    result = count_elements(nums)

    expect(result).to eq(1)
  end
end
