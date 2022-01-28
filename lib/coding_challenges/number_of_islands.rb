Coordinate = Struct.new(:row, :col)

def num_islands(grid)
  visited = Set.new
  result = 0

  grid.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      at = Coordinate.new(row_index, col_index)
      if not_visited(visited, at) && cell == "1"
        result += 1
        dfs(visited, grid, at)
      end
    end
  end

  result
end

def dfs(visited, grid, at)
  visited << at
  neighbours_coords(grid, at)
    .select { |neighbour_coord| cell_in(grid, neighbour_coord) == "1" }
    .select { |neighbour_coord| not_visited(visited, neighbour_coord) }
    .each { |island_part_coord| dfs(visited, grid, island_part_coord) }
end

def neighbours_coords(grid, at)
  row = at[0]
  max_row = grid.length - 1
  col = at[1]
  max_col = grid[0].length - 1
  result = []
  result << Coordinate.new(row, col + 1) if (row).between?(0, max_row) && (col + 1).between?(0, max_col)
  result << Coordinate.new(row + 1, col) if (row + 1).between?(0, max_row) && (col).between?(0, max_col)
  result << Coordinate.new(row, col - 1) if (row).between?(0, max_row) && (col - 1).between?(0, max_col)
  result << Coordinate.new(row - 1, col) if (row - 1).between?(0, max_row) && (col).between?(0, max_col)
  result
end

def cell_in(grid, coordinate)
  grid[coordinate.row][coordinate.col]
end

def not_visited(visited, coordinate)
  !visited.include?(coordinate)
end
