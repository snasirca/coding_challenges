require "tree_node"

def is_valid_bst(root)
  min_max(root) != nil
end

def min_max(node)
  if node.left == nil
    min = node.val
  else
    left_min_max = min_max(node.left)
    if left_min_max && left_min_max[1] < node.val
      min = left_min_max[0]
    else
      min = nil
    end
  end
  if node.right == nil
    max = node.val
  else
    right_min_max = min_max(node.right)
    if right_min_max && node.val < right_min_max[0]
      max = right_min_max[1]
    else
      max = nil
    end
  end

  if min == nil || max == nil
    nil
  else
    [min, max]
  end
end
