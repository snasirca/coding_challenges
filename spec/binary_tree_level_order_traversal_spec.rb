require "coding_challenges/binary_tree_level_order_traversal"
require "tree_node"

RSpec.describe CodingChallenges::BinaryTreeLevelOrderTraversal do
  subject { CodingChallenges::BinaryTreeLevelOrderTraversal.new }

  it "1" do
    root =
      TreeNode.new(3,
        TreeNode.new(9),
        TreeNode.new(20,
          TreeNode.new(15),
          TreeNode.new(7)
        )
      )

    result = subject.level_order(root)

    expect(result).to eq([[3], [9, 20], [15, 7]])
  end

  it "2" do
    root = TreeNode.new(1)

    result = subject.level_order(root)

    expect(result).to eq([[1]])
  end

  it "3" do
    root = nil

    result = subject.level_order(root)

    expect(result).to eq([])
  end

  it "4" do
    root =
      TreeNode.new(1,
        TreeNode.new(2),
        TreeNode.new(3)
      )

    result = subject.level_order(root)

    expect(result).to eq([[1], [2, 3]])
  end

  it "5" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(3)
      )

    result = subject.level_order(root)

    expect(result).to eq([[1], [3]])
  end

  it "6" do
    root =
      TreeNode.new(1,
        TreeNode.new(2),
        nil,
      )

    result = subject.level_order(root)

    expect(result).to eq([[1], [2]])
  end

  it "7" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(2,
          nil,
          TreeNode.new(3
          )
        ),
      )

    result = subject.level_order(root)

    expect(result).to eq([[1], [2], [3]])
  end

  it "8" do
    root =
      TreeNode.new(3,
        TreeNode.new(9,
          TreeNode.new(11,
            TreeNode.new(13),
            TreeNode.new(56)
          )
        ),
        TreeNode.new(20,
          TreeNode.new(5,
            TreeNode.new(6),
            TreeNode.new(8)
          ),
          TreeNode.new(7,
            TreeNode.new(12),
            TreeNode.new(19)
          )
        )
      )

    result = subject.level_order(root)

    expect(result).to eq([[3], [9, 20], [11, 5, 7], [13, 56, 6, 8, 12, 19]])
  end
end
