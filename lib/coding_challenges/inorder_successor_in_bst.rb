require "tree_node"
require "algorithms"

include Containers

def inorder_successor(root, p)
  successor = nil
  curr = root
  while curr != nil
    if curr.val > p.val
      successor = curr
      curr = curr.left
    else
      curr = curr.right
    end
  end
  successor
end

def inorder_successor_brute(root, p)
  stack = Stack.new
  p_found = false
  curr = root
  while curr != nil || stack.any?
    while curr != nil
      stack.push(curr)
      curr = curr.left
    end
    curr = stack.pop
    return curr if p_found
    p_found = true if curr.val == p.val
    curr = curr.right
  end
  nil
end
