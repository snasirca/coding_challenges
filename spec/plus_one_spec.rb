require "coding_challenges/plus_one"

RSpec.describe CodingChallenges::PlusOne do
  subject { CodingChallenges::PlusOne.new }

  it "1" do
    digits = [1, 2, 3]

    result = subject.plus_one(digits)

    expect(result).to eq([1, 2, 4])
  end

  it "2" do
    digits = [4, 3, 2, 1]

    result = subject.plus_one(digits)

    expect(result).to eq([4, 3, 2, 2])
  end

  it "3" do
    digits = [9]

    result = subject.plus_one(digits)

    expect(result).to eq([1, 0])
  end
end
