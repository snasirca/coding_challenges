require "coding_challenges/find_all_lonely_numbers_in_the_array"

RSpec.describe CodingChallenges::FindAllLonelyNumbersInTheArray do
  subject { CodingChallenges::FindAllLonelyNumbersInTheArray.new }

  it "1" do
    nums = [10]

    result = subject.find_lonely(nums)

    expect(result).to contain_exactly(10)
  end

  it "2" do
    nums = [10, 10]

    result = subject.find_lonely(nums)

    expect(result).to be_empty
  end

  it "3" do
    nums = [10, 6, 5, 8]

    result = subject.find_lonely(nums)

    expect(result).to contain_exactly(10, 8)
  end

  it "4" do
    nums = [1, 3, 5, 3]

    result = subject.find_lonely(nums)

    expect(result).to contain_exactly(1, 5)
  end

  it "5" do
    nums = [9, 7, 5, 3]

    result = subject.find_lonely(nums)

    expect(result).to contain_exactly(9, 7, 5, 3)
  end

  it "6" do
    nums = [9, 7, 5, 5, 3]

    result = subject.find_lonely(nums)

    expect(result).to contain_exactly(9, 7, 3)
  end
end
