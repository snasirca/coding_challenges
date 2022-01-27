require "coding_challenges/number_of_islands"

RSpec.describe CodingChallenges::NumberOfIslands do
  subject { CodingChallenges::NumberOfIslands.new }

  it "1" do
    grid = [
      %w[1 1 1 1 0],
      %w[1 1 0 1 0],
      %w[1 1 0 0 0],
      %w[0 0 0 0 0]
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(1)
  end

  it "2" do
    grid = [
      %w[1 1 0 0 0],
      %w[1 1 0 0 0],
      %w[0 0 1 0 0],
      %w[0 0 0 1 1]
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(3)
  end

  it "3" do
    grid = [
      %w[1 0],
      %w[0 1],
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(2)
  end

  it "4" do
    grid = [
      %w[0 0],
      %w[0 0],
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(0)
  end

  it "5" do
    grid = [
      %w[1 0],
      %w[0 1],
      %w[1 0],
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(3)
  end

  it "6" do
    grid = [
      %w[1],
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(1)
  end

  it "7" do
    grid = [
      %w[0],
    ]

    result = subject.num_islands(grid)

    expect(result).to eq(0)
  end
end
