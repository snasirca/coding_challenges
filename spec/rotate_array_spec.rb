require "coding_challenges/rotate_array"

RSpec.describe CodingChallenges::RotateArray do
  subject { CodingChallenges::RotateArray.new }

  it "1" do
    nums = [1, 2, 3, 4, 5, 6, 7]
    k = 3

    result = subject.rotate(nums, k)

    expect(result).to eq([5, 6, 7, 1, 2, 3, 4])
  end

  it "2" do
    nums = [-1, -100, 3, 99]
    k = 2

    result = subject.rotate(nums, k)

    expect(result).to eq([3, 99, -1, -100])
  end

  it "3" do
    nums = [1, 2, 3]
    k = 1

    result = subject.rotate(nums, k)

    expect(result).to eq([3, 1, 2])
  end

  it "4" do
    nums = [1, 2, 3, 4]
    k = 2

    result = subject.rotate(nums, k)

    expect(result).to eq([3, 4, 1, 2])
  end

  it "4" do
    nums = [1, 2, 3, 4]
    k = 3

    result = subject.rotate(nums, k)

    expect(result).to eq([2, 3, 4, 1])
  end

  it "5" do
    nums = [1, 2, 3, 4]
    k = 0

    result = subject.rotate(nums, k)

    expect(result).to eq([1, 2, 3, 4])
  end

  it "6" do
    nums = [1]
    k = 0

    result = subject.rotate(nums, k)

    expect(result).to eq([1])
  end

  it "7" do
    nums = [1]
    k = 2

    result = subject.rotate(nums, k)

    expect(result).to eq([1])
  end

  it "8" do
    nums = [1, 2, 3]
    k = 6

    result = subject.rotate(nums, k)

    expect(result).to eq([1, 2, 3])
  end

  it "9" do
    nums = [1, 2, 3, 4, 5, 6]
    k = 2

    result = subject.rotate(nums, k)

    expect(result).to eq([5, 6, 1, 2, 3, 4])
  end
end
