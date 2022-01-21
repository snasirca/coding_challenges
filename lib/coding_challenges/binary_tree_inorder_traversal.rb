require 'rspec/autorun'
require 'algorithms'

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

RSpec.describe "Solution" do
  it "3" do
    root = nil

    result = inorder_traversal(root)

    expect(result).to eq([])
  end
  it "2" do
    root = TreeNode.new(1)

    result = inorder_traversal(root)

    expect(result).to eq([1])
  end
  it "1" do
    root = TreeNode.new(1, nil, TreeNode.new(2, TreeNode.new(3)))

    result = inorder_traversal(root)

    expect(result).to eq([1, 3, 2])
  end
end

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
