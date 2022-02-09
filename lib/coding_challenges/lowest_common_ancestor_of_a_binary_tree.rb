require "tree_node"

def lowest_common_ancestor(root, p, q)
  p_path = build_path_to_val(root, p)
  q_path = build_path_to_val(root, q)
  common_path = p_path & q_path
  common_path[0]
end

def build_path_to_val(node, search_node)
  return [] unless node
  if node.val == search_node.val
    [node]
  else
    left_search = build_path_to_val(node.left, search_node)
    if left_search[0]&.val == search_node.val
      return left_search + [node]
    end
    right_search = build_path_to_val(node.right, search_node)
    if right_search[0]&.val == search_node.val
      return right_search + [node]
    end
    []
  end
end
