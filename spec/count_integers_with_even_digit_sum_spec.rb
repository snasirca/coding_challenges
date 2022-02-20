require "coding_challenges/count_integers_with_even_digit_sum"

RSpec.describe "Solution" do
  it "1" do
    num = 4

    result = count_even(num)

    expect(result).to eq(2)
  end

  it "2" do
    num = 30

    result = count_even(num)

    expect(result).to eq(14)
  end

  it "3" do
    num = 1000

    result = count_even(num)

    expect(result).to eq(499)
  end
end
