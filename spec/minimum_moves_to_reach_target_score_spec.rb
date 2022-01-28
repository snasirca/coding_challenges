require "coding_challenges/minimum_moves_to_reach_target_score"

RSpec.describe "Solution" do
  it "1" do
    target = 5
    max_doubles = 0

    result = min_moves(target, max_doubles)

    expect(result).to eq(4)
  end

  it "2" do
    target = 19
    max_doubles = 2

    result = min_moves(target, max_doubles)

    expect(result).to eq(7)
  end

  it "3" do
    target = 10
    max_doubles = 4

    result = min_moves(target, max_doubles)

    expect(result).to eq(4)
  end

  it "4" do
    target = 1
    max_doubles = 999

    result = min_moves(target, max_doubles)

    expect(result).to eq(0)
  end

  it "5" do
    target = 2
    max_doubles = 999

    result = min_moves(target, max_doubles)

    expect(result).to eq(1)
  end

  it "5" do
    target = 3
    max_doubles = 999

    result = min_moves(target, max_doubles)

    expect(result).to eq(2)
  end

  it "6" do
    target = 656101987
    max_doubles = 1

    result = min_moves(target, max_doubles)

    expect(result).to eq(328050994)
  end
end
