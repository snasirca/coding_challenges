require "coding_challenges/plus_one"

RSpec.describe "Solution" do
  it "1" do
    digits = [1, 2, 3]

    result = plus_one(digits)

    expect(result).to eq([1, 2, 4])
  end

  it "2" do
    digits = [4, 3, 2, 1]

    result = plus_one(digits)

    expect(result).to eq([4, 3, 2, 2])
  end

  it "3" do
    digits = [9]

    result = plus_one(digits)

    expect(result).to eq([1, 0])
  end
end
