module CodingChallenges
  class SetMatrixZeroes
    def set_zeroes(matrix)
      m = matrix.length
      n = matrix[0].length
      first_col_set_zeroes = false

      m.times do |row_index|
        if matrix[row_index][0] == 0
          first_col_set_zeroes = true
        end
        n.times.to_a[1..].each do |col_index|
          curr_num = matrix[row_index][col_index]
          if curr_num == 0
            matrix[row_index][0] = 0
            matrix[0][col_index] = 0
          end
        end
      end

      m.times.to_a[1..].each do |row_index|
        n.times.to_a[1..].each do |col_index|
          row_first_num = matrix[row_index][0]
          col_first_num = matrix[0][col_index]
          if row_first_num == 0 || col_first_num == 0
            matrix[row_index][col_index] = 0
          end
        end
      end

      if matrix[0][0] == 0
        n.times do |col_index|
          matrix[0][col_index] = 0
        end
      end

      if first_col_set_zeroes
        m.times do |row_index|
          matrix[row_index][0] = 0
        end
      end

      matrix
    end
  end
end
