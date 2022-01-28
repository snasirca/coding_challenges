require "coding_challenges/binary_tree_preorder_traversal"

RSpec.describe "Solution" do
  it "1" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(2,
          TreeNode.new(3)
        )
      )

    result = preorder_traversal(root)

    expect(result).to eq([1, 2, 3])
  end

  it "2" do
    root = nil

    result = preorder_traversal(root)

    expect(result).to eq([])
  end

  it "3" do
    root = TreeNode.new(1)

    result = preorder_traversal(root)

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

    result = preorder_traversal(root)

    expect(result).to eq([9, 5, 2, 1, 7, 6, 12])
  end
end
