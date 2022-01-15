require "coding_challenges/validate_binary_search_tree"
require "tree_node"

RSpec.describe CodingChallenges::ValidateBinarySearchTree do
  subject { CodingChallenges::ValidateBinarySearchTree.new }

  it "1" do
    root =
      TreeNode.new(2,
        TreeNode.new(1),
        TreeNode.new(3)
      )

    result = subject.is_valid_bst(root)

    expect(result).to eq(true)
  end

  it "2" do
    root =
      TreeNode.new(5,
        TreeNode.new(1),
        TreeNode.new(4,
          TreeNode.new(3),
          TreeNode.new(6)
        )
      )

    result = subject.is_valid_bst(root)

    expect(result).to eq(false)
  end

  it "3" do
    root = TreeNode.new(1)

    result = subject.is_valid_bst(root)

    expect(result).to eq(true)
  end

  it "4" do
    root =
      TreeNode.new(5,
        TreeNode.new(4),
        TreeNode.new(6,
          TreeNode.new(3),
          TreeNode.new(7)
        )
      )

    result = subject.is_valid_bst(root)

    expect(result).to eq(false)
  end
end
