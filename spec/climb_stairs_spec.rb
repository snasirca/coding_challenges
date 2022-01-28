require "coding_challenges/climb_stairs"

RSpec.describe "Solution" do
  it "1" do
    n = 1

    result = climb_stairs(n)

    expect(result).to eq(1)
  end

  it "2" do
    n = 2

    result = climb_stairs(n)

    expect(result).to eq(2)
  end

  it "3" do
    n = 3

    result = climb_stairs(n)

    expect(result).to eq(3)
  end

  it "4" do
    n = 4

    result = climb_stairs(n)

    expect(result).to eq(5)
  end

  it "5" do
    n = 45

    result = climb_stairs(n)

    expect(result).to eq(1836311903)
  end
end
