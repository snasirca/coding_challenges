require "tree_node"

def max_depth(root)
  return 0 unless root
  1 + [
    root.left ? max_depth(root.left) : 0,
    root.right ? max_depth(root.right) : 0
  ].max
end
