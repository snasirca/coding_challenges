require "coding_challenges/intersection_of_two_arrays_2"

RSpec.describe "Solution" do
  it "1" do
    nums1 = [1, 2, 2, 1]
    nums2 = [2, 2]

    result = intersect(nums1, nums2)

    expect(result).to eq([2, 2])
  end

  it "2" do
    nums1 = [4, 9, 5]
    nums2 = [9, 4, 9, 8, 4]

    result = intersect(nums1, nums2)

    expect(result).to eq([9, 4])
  end
end
