# This is a brute force solution. Optimal solution should use a hashtable.
def is_valid_sudoku(board)
  9.times do |row_index|
    9.times do |column_index|
      curr_num = board[row_index][column_index]
      if curr_num != "."

        # scan current row
        9.times do |column_scan_index|
          if board[row_index][column_scan_index] == curr_num
            return false if column_scan_index != column_index
          end
        end

        # scan current column
        9.times do |row_scan_index|
          if board[row_scan_index][column_index] == curr_num
            return false if row_scan_index != row_index
          end
        end

        # scan current 3x3 sub-box
        subbox_row_index = row_index - (row_index % 3)
        3.times do
          subbox_column_index = column_index - (column_index % 3)
          3.times do
            if board[subbox_row_index][subbox_column_index] == curr_num &&
              (subbox_row_index != row_index && subbox_column_index != column_index)
              return false
            end
            subbox_column_index += 1
          end
          subbox_row_index += 1
        end

      end
    end
  end
  true
end
