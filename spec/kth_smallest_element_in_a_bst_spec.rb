require "coding_challenges/kth_smallest_element_in_a_bst"
require "tree_node"

RSpec.describe CodingChallenges::KthSmallestElementInABST do
  subject { CodingChallenges::KthSmallestElementInABST.new }

  it "1" do
    root =
      TreeNode.new(3,
        TreeNode.new(1,
          nil,
          TreeNode.new(2)),
        TreeNode.new(4)
      )
    k = 1

    result = subject.kth_smallest(root, k)

    expect(result).to eq(1)
  end

  it "2" do
    root =
      TreeNode.new(3,
        TreeNode.new(1,
          nil,
          TreeNode.new(2)),
        TreeNode.new(4)
      )
    k = 2

    result = subject.kth_smallest(root, k)

    expect(result).to eq(2)
  end

  it "3" do
    root =
      TreeNode.new(5,
        TreeNode.new(3,
          TreeNode.new(2,
            TreeNode.new(1)),
          TreeNode.new(4),
        ),
        TreeNode.new(6)
      )
    k = 3

    result = subject.kth_smallest(root, k)

    expect(result).to eq(3)
  end

  it "4" do
    root = TreeNode.new(5)
    k = 1

    result = subject.kth_smallest(root, k)

    expect(result).to eq(5)
  end
end
