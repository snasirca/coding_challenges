require "algorithms"
require "tree_node"

include Containers

def zigzag_level_order(root)
  return [] unless root

  result = []
  curr_level = []
  forewards = true
  nodes = Deque.new([root, nil])

  while nodes.length > 0
    curr = forewards ? nodes.pop_front : nodes.pop_back
    if curr
      curr_level << curr.val
      if forewards
        nodes.push_back(curr.left) if curr.left
        nodes.push_back(curr.right) if curr.right
      else
        nodes.push_front(curr.right) if curr.right
        nodes.push_front(curr.left) if curr.left
      end
    else
      result << curr_level
      curr_level = []
      if nodes.length > 0
        if forewards
          nodes.push_front(nil)
        else
          nodes.push_back(nil)
        end
      end
      forewards = !forewards
    end
  end

  result
end
