require "coding_challenges/maximum_subarray"

RSpec.describe CodingChallenges::MaximumSubarray do
  subject { CodingChallenges::MaximumSubarray.new }

  it "1" do
    nums = [1]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(1)
  end

  it "2" do
    nums = [-2, 1]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(1)
  end

  it "3" do
    nums = [1, 2]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(3)
  end

  it "4" do
    nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(6)
  end

  it "5" do
    nums = [5, 4, -1, 7, 8]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(23)
  end

  it "6" do
    nums = [-1]

    max_sum = subject.max_sub_array(nums)

    expect(max_sum).to eq(-1)
  end
end
