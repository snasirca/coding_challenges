require "coding_challenges/two_furthest_houses_with_different_colors"

RSpec.describe CodingChallenges::TwoFurthestHousesWithDifferentColors do
  subject { CodingChallenges::TwoFurthestHousesWithDifferentColors.new }

  it "1" do
    colors = [1, 1, 1, 1, 6, 1, 1, 1]

    diff = subject.max_distance(colors)

    expect(diff).to eq(4)
  end

  it "2" do
    colors = [1, 8, 3, 8, 3]

    diff = subject.max_distance(colors)

    expect(diff).to eq(4)
  end

  it "3" do
    colors = [0, 1]

    diff = subject.max_distance(colors)

    expect(diff).to eq(1)
  end

  it "4" do
    colors = [1, 6, 1, 1]

    diff = subject.max_distance(colors)

    expect(diff).to eq(2)
  end

  it "5" do
    colors = [-1, 6, -1, -1]

    diff = subject.max_distance(colors)

    expect(diff).to eq(2)
  end

  it "5 - prematurely updated earliest and latest" do
    colors = [9, 9, 9, 18, 9, 9, 9, 9, 9, 18]

    diff = subject.max_distance(colors)

    expect(diff).to eq(9)
  end
end
