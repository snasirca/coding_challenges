require "coding_challenges/reverse_integer"

RSpec.describe "Solution" do
  it "1" do
    x = 123

    result = reverse(x)

    expect(result).to eq(321)
  end

  it "2" do
    x = -123

    result = reverse(x)

    expect(result).to eq(-321)
  end

  it "3" do
    x = 120

    result = reverse(x)

    expect(result).to eq(21)
  end

  it "4" do
    x = 2**31 - 1

    result = reverse(x)

    expect(result).to eq(0)
  end

  it "5" do
    x = -2**31

    result = reverse(x)

    expect(result).to eq(0)
  end

  it "6" do
    x = 1463847412

    result = reverse(x)

    expect(result).to eq(2147483641)
  end

  it "7" do
    x = 1534236469

    result = reverse(x)

    expect(result).to eq(0)
  end

  it "8" do
    x = -1563847412

    result = reverse(x)

    expect(result).to eq(0)
  end
end
