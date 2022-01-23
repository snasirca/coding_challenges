require "coding_challenges/rearrange_array_elements_by_sign"

RSpec.describe CodingChallenges::RearrangeArrayElementsBySign do
  subject { CodingChallenges::RearrangeArrayElementsBySign.new }

  it "1" do
    nums = [-1, 1]

    result = subject.rearrange_array(nums)

    expect(result).to eq([1, -1])
  end

  it "2" do
    nums = [3, 1, -2, -5, 2, -4]

    result = subject.rearrange_array(nums)

    expect(result).to eq([3, -2, 1, -5, 2, -4])
  end

  it "3" do
    nums = [-1, -2, -3, 4, 5, 6]

    result = subject.rearrange_array(nums)

    expect(result).to eq([4, -1, 5, -2, 6, -3])
  end
end
