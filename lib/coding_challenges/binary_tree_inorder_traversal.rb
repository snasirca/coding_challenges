require "algorithms"
require "tree_node"

include Containers

def inorder_traversal(root)
  result = []
  stack = Stack.new
  curr = root
  while curr != nil || stack.any?
    while curr != nil
      stack.push(curr)
      curr = curr.left
    end
    curr = stack.pop
    result << curr.val
    curr = curr.right
  end
  result
end

def inorder_traversal_first_success(root)
  result = []
  stack = Stack.new
  curr = root
  while curr != nil || stack.any?
    while curr != nil
      stack.push(curr)
      curr = curr.left
    end
    curr = stack.pop
    result << curr.val
    curr = curr.right
  end
  result
end
