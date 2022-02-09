require "tree_node"

def vertical_order(root)
  return [] unless root
  columns = {}
  dfs(root, columns)
  columns.keys.sort.map do |column|
    columns[column].keys.sort.map do |row|
      columns[column][row]
    end.flatten
  end
end

def dfs(node, columns, column = 0, row = 0)
  if columns.key?(column)
    if columns[column].key?(row)
      columns[column][row] += [node.val]
    else
      columns[column][row] = [node.val]
    end
  else
    columns[column] = { row => [node.val] }
  end
  dfs(node.left, columns, column - 1, row + 1) if node.left
  dfs(node.right, columns, column + 1, row + 1) if node.right
end
