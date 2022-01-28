require "coding_challenges/set_matrix_zeroes"

RSpec.describe "Solution" do
  it "1" do
    matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]

    result = set_zeroes(matrix)

    expect(result).to eq([[1, 0, 1], [0, 0, 0], [1, 0, 1]])
  end

  it "2" do
    matrix = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]

    result = set_zeroes(matrix)

    expect(result).to eq([[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]])
  end

  it "3" do
    matrix = [[0]]

    result = set_zeroes(matrix)

    expect(result).to eq([[0]])
  end

  it "4" do
    matrix = [[1]]

    result = set_zeroes(matrix)

    expect(result).to eq([[1]])
  end

  it "5" do
    matrix = [[1, 2], [1, 2]]

    result = set_zeroes(matrix)

    expect(result).to eq([[1, 2], [1, 2]])
  end

  it "6" do
    matrix = [[1, 2], [1, 0]]

    result = set_zeroes(matrix)

    expect(result).to eq([[1, 0], [0, 0]])
  end

  it "7" do
    matrix = [[1, 2, 3, 4], [5, 0, 7, 8], [0, 10, 11, 12], [13, 14, 15, 0]]

    result = set_zeroes(matrix)

    expect(result).to eq([[0, 0, 3, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]])
  end

  it "8" do
    matrix = [[1, 0, 3]]

    result = set_zeroes(matrix)

    expect(result).to eq([[0, 0, 0]])
  end
end
