require 'rspec/autorun'

def increasing_triplet(nums)
  first_num = 2 ** 31 - 1
  second_num = 2 ** 31 - 1
  nums.each do |num|
    if num <= first_num
      first_num = num
    elsif num <= second_num
      second_num = num
    else
      return true
    end
  end
  false
end

RSpec.describe "Solution" do
  it "510" do
    nums = [2, 4, -2, -3]

    result = increasing_triplet(nums)

    expect(result).to eq(false)
  end

  it "896" do
    nums = [4, 2, 3, 1, 2, 1, 9, 9, 9]

    result = increasing_triplet(nums)

    expect(result).to eq(true)
  end

  it "531" do
    nums = [2, 1, 1, 1, 5, 0, 4, 6]

    result = increasing_triplet(nums)

    expect(result).to eq(true)
  end

  it "874" do
    nums = [2, 1, 5, 0, 4, 6]

    result = increasing_triplet(nums)

    expect(result).to eq(true)
  end

  it "574" do
    nums = [5, 4, 3, 2, 1]

    result = increasing_triplet(nums)

    expect(result).to eq(false)
  end

  it "1" do
    nums = [1, 2, 3, 4, 5]

    result = increasing_triplet(nums)

    expect(result).to eq(true)
  end
end
