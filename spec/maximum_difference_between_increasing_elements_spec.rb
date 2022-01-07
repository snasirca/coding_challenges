require "coding_challenges/maximum_difference_between_increasing_elements"

RSpec.describe CodingChallenges::MaximumDifferenceBetweenIncreasingElements do
  subject { CodingChallenges::MaximumDifferenceBetweenIncreasingElements.new }

  it "1" do
    nums = [7,1,5,4]

    diff = subject.maximum_difference(nums)

    expect(diff).to eq(4)
  end

  it "2" do
    nums = [9,4,3,2]

    diff = subject.maximum_difference(nums)

    expect(diff).to eq(-1)
  end

  it "3" do
    nums = [1,5,2,10]

    diff = subject.maximum_difference(nums)

    expect(diff).to eq(9)
  end

  it "4" do
    nums = [9,4,3,3,2]

    diff = subject.maximum_difference(nums)

    expect(diff).to eq(-1)
  end
end
