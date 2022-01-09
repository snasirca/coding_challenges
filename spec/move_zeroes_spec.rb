require "coding_challenges/move_zeroes"

RSpec.describe CodingChallenges::MoveZeroes do
  subject { CodingChallenges::MoveZeroes.new }

  it "1" do
    nums = [0, 1, 0, 3, 12]

    result = subject.move_zeroes(nums)

    expect(result).to eq([1, 3, 12, 0, 0])
  end

  it "2" do
    nums = [0]

    result = subject.move_zeroes(nums)

    expect(result).to eq([0])
  end

  it "3" do
    nums = [1]

    result = subject.move_zeroes(nums)

    expect(result).to eq([1])
  end

  it "4" do
    nums = [2, 1]

    result = subject.move_zeroes(nums)

    expect(result).to eq([2, 1])
  end
end
