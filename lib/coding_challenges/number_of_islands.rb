module CodingChallenges
  class NumberOfIslands
    def num_islands(grid)
      visited = Set.new
      result = 0

      grid.each_with_index do |row, row_index|
        row.each_with_index do |cell, col_index|
          if !visited.include?([row_index, col_index]) && cell == "1"
            result += 1
            dfs(visited, grid, [row_index, col_index])
          end
        end
      end

      result
    end

    def dfs(visited, grid, at)
      visited << at
      neighbours_coords(grid, at)
        .select { |neighbour_coord| grid[neighbour_coord[0]][neighbour_coord[1]] == "1" }
        .select { |neighbour_coord| !visited.include?(neighbour_coord) }
        .each { |island_part_coord| dfs(visited, grid, island_part_coord) }
    end

    def neighbours_coords(grid, at)
      row = at[0]
      max_row = grid.length - 1
      col = at[1]
      max_col = grid[0].length - 1
      result = []
      result << [row, col + 1] if (row).between?(0, max_row) && (col + 1).between?(0, max_col)
      result << [row + 1, col] if (row + 1).between?(0, max_row) && (col).between?(0, max_col)
      result << [row, col - 1] if (row).between?(0, max_row) && (col - 1).between?(0, max_col)
      result << [row - 1, col] if (row - 1).between?(0, max_row) && (col).between?(0, max_col)
      result
    end
  end
end
