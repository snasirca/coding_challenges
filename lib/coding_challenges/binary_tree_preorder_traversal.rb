require "tree_node"
require "algorithms"

include Containers

def preorder_traversal(root)
  result = []
  stack = Stack.new([root])
  while stack.any?
    curr = stack.pop
    result << curr.val
    stack.push(curr.right) if curr.right
    stack.push(curr.left) if curr.left
  end
  result
end
