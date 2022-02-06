class Searcher
  attr_reader :num_rows, :num_cols

  def initialize(board)
    @board = board
    @num_rows = board.length
    @num_cols = board[0].length
  end

  def backtrack(row_index, col_index, suffix)
    return true if suffix.length == 0

    curr_char = suffix[0]

    return false if row_index < 0 || col_index < 0 ||
      row_index == @num_rows || col_index == @num_cols ||
      @board[row_index][col_index] != curr_char

    curr_value = @board[row_index][col_index]
    @board[row_index][col_index] = "#"

    rest_of_suffix = suffix[1..]
    result = backtrack(row_index, col_index + 1, rest_of_suffix) ||
      backtrack(row_index + 1, col_index, rest_of_suffix) ||
      backtrack(row_index, col_index - 1, rest_of_suffix) ||
      backtrack(row_index - 1, col_index, rest_of_suffix)

    @board[row_index][col_index] = curr_value

    result
  end
end

def exist_(board, word)
  searcher = Searcher.new(board)

  (0...searcher.num_rows).each do |i|
    (0...searcher.num_cols).each do |j|
      return true if searcher.backtrack(i, j, word)
    end
  end

  false
end
