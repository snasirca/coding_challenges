require "coding_challenges/binary_tree_preorder_traversal"
require "tree_node"

RSpec.describe CodingChallenges::BinaryTreePreorderTraversal do
  subject { CodingChallenges::BinaryTreePreorderTraversal.new }

  it "1" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(2,
          TreeNode.new(3)
        )
      )

    result = subject.preorder_traversal(root)

    expect(result).to eq([1, 2, 3])
  end

  it "2" do
    root = nil

    result = subject.preorder_traversal(root)

    expect(result).to eq([])
  end

  it "3" do
    root = TreeNode.new(1)

    result = subject.preorder_traversal(root)

    expect(result).to eq([1])
  end

  it "4" do
    root =
      TreeNode.new(9,
        TreeNode.new(5,
          TreeNode.new(2,
            TreeNode.new(1)
          ),
          TreeNode.new(7,
            TreeNode.new(6
            )
          )
        ),
        TreeNode.new(12)
      )

    result = subject.preorder_traversal(root)

    expect(result).to eq([9, 5, 2, 1, 7, 6, 12])
  end
end
