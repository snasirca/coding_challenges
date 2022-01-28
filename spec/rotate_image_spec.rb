require "coding_challenges/rotate_image"

RSpec.describe "Solution" do
  it "1" do
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    result = rotate(matrix)

    expect(result).to eq([
      [7, 4, 1],
      [8, 5, 2],
      [9, 6, 3]
    ])
  end

  it "2" do
    matrix = [
      [5, 1, 9, 11],
      [2, 4, 8, 10],
      [13, 3, 6, 7],
      [15, 14, 12, 16]
    ]

    result = rotate(matrix)

    expect(result).to eq([
      [15, 13, 2, 5],
      [14, 3, 4, 1],
      [12, 6, 8, 9],
      [16, 7, 10, 11]
    ])
  end

  it "3" do
    matrix = [
      [1, 2],
      [3, 4]
    ]

    result = rotate(matrix)

    [
      [1, 2],
      [3, 4]
    ]

    expect(result).to eq([
      [3, 1],
      [4, 2]
    ])
  end
end
