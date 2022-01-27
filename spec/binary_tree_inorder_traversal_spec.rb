require "coding_challenges/binary_tree_inorder_traversal"
require "tree_node"

RSpec.describe CodingChallenges::BinaryTreeInorderTraversal do
  subject { CodingChallenges::BinaryTreeInorderTraversal.new }

  it "1" do
    root = TreeNode.new(1, nil, TreeNode.new(2, TreeNode.new(3)))

    result = subject.inorder_traversal(root)

    expect(result).to eq([1, 3, 2])
  end

  it "2" do
    root = TreeNode.new(1)

    result = subject.inorder_traversal(root)

    expect(result).to eq([1])
  end

  it "3" do
    root = nil

    result = subject.inorder_traversal(root)

    expect(result).to eq([])
  end
end
