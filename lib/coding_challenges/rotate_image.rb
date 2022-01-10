module CodingChallenges
  class RotateImage
    def rotate(matrix)
      n = matrix.length
      layers = n - 1
      layers.times do |layer|
        (n - 1 - (2 * layer)).times do |start_point|
          first_row = layer
          last_col = n - 1 - layer
          last_row = n - 1 - layer
          first_col = layer

          first_cell_index = [first_row, layer + start_point]
          second_cell_index = [layer + start_point, last_col]
          third_cell_index = [last_row, n - 1 - start_point - layer]
          fourth_cell_index = [n - 1 - start_point - layer, first_col]

          first_cell_num = matrix[first_cell_index[0]][first_cell_index[1]]
          second_cell_num = matrix[second_cell_index[0]][second_cell_index[1]]
          third_cell_num = matrix[third_cell_index[0]][third_cell_index[1]]
          fourth_cell_num = matrix[fourth_cell_index[0]][fourth_cell_index[1]]

          matrix[first_cell_index[0]][first_cell_index[1]] = fourth_cell_num
          matrix[second_cell_index[0]][second_cell_index[1]] = first_cell_num
          matrix[third_cell_index[0]][third_cell_index[1]] = second_cell_num
          matrix[fourth_cell_index[0]][fourth_cell_index[1]] = third_cell_num
        end
      end
      matrix
    end
  end
end
