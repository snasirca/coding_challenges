require "coding_challenges/valid_sudoku"

RSpec.describe "Solution" do
  it "1" do
    board =
      [
        %w[5 3 . . 7 . . . .],
        %w[6 . . 1 9 5 . . .],
        %w[. 9 8 . . . . 6 .],
        %w[8 . . . 6 . . . 3],
        %w[4 . . 8 . 3 . . 1],
        %w[7 . . . 2 . . . 6],
        %w[. 6 . . . . 2 8 .],
        %w[. . . 4 1 9 . . 5],
        %w[. . . . 8 . . 7 9]
      ]

    result = is_valid_sudoku(board)

    expect(result).to eq(true)
  end

  it "2" do
    board =
      [
        %w[8 3 . . 7 . . . .],
        %w[6 . . 1 9 5 . . .],
        %w[. 9 8 . . . . 6 .],
        %w[8 . . . 6 . . . 3],
        %w[4 . . 8 . 3 . . 1],
        %w[7 . . . 2 . . . 6],
        %w[. 6 . . . . 2 8 .],
        %w[. . . 4 1 9 . . 5],
        %w[. . . . 8 . . 7 9]
      ]

    result = is_valid_sudoku(board)

    expect(result).to eq(false)
  end
end
