require "coding_challenges/merge_sorted_array"

RSpec.describe CodingChallenges::MergeSortedArray do
  subject { CodingChallenges::MergeSortedArray.new }

  it "1" do
    nums1 = [1, 2, 3, 0, 0, 0]
    m = 3
    nums2 = [2, 5, 6]
    n = 3

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1, 2, 2, 3, 5, 6])
  end

  it "2" do
    nums1 = [1]
    m = 1
    nums2 = []
    n = 0

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1])
  end

  it "3" do
    nums1 = [0]
    m = 0
    nums2 = [1]
    n = 1

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1])
  end

  it "4" do
    nums1 = [0, 0]
    m = 0
    nums2 = [1, 2]
    n = 2

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1, 2])
  end

  it "5" do
    nums1 = [1, 2]
    m = 2
    nums2 = []
    n = 0

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1, 2])
  end

  it "6" do
    nums1 = [1, 2]
    m = 2
    nums2 = [1]
    n = 1

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([1, 1, 2])
  end

  it "7" do
    nums1 = []
    m = 0
    nums2 = []
    n = 0

    result = subject.merge(nums1, m, nums2, n)

    expect(result).to eq([])
  end
end
