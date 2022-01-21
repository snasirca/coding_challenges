require "rspec/autorun"

def build_tree(preorder, inorder)
  return TreeNode.new(preorder[0]) if preorder.length == 1 && inorder.length == 1
  root_val = preorder[0]
  left_inorder, right_inorder = split(inorder, root_val)
  left_preorder = preorder[1, left_inorder.length]
  right_preorder = preorder.last(right_inorder.length)
  root = TreeNode.new(root_val)
  if left_inorder.any?
    root.left = build_tree(left_preorder, left_inorder)
  end
  if right_inorder.any?
    root.right = build_tree(right_preorder, right_inorder)
  end
  root
end

def split(array, value = nil)
  arr = array.dup
  result = []
  while (idx = arr.index(value))
    result << arr.shift(idx)
    arr.shift
  end
  result << arr
end

RSpec.describe "Solution" do
  it "3" do
    preorder = [1, 2, 3]
    inorder = [2, 1, 3]

    root = build_tree(preorder, inorder)

    expect(root.val).to eq(1)
    expect(root.left.val).to eq(2)
    expect(root.right.val).to eq(3)
  end
  it "2" do
    preorder = [1, 2, 3]
    inorder = [1, 2, 3]

    root = build_tree(preorder, inorder)

    expect(root.val).to eq(1)
    expect(root.right.val).to eq(2)
    expect(root.right.right.val).to eq(3)
  end
  it "1" do
    preorder = [1]
    inorder = [1]

    root = build_tree(preorder, inorder)

    expect(root.val).to eq(1)
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
