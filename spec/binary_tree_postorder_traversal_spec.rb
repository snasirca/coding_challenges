require "coding_challenges/binary_tree_postorder_traversal"

RSpec.describe "Solution" do
  it "1" do
    root = TreeNode.new(1, nil, TreeNode.new(2, TreeNode.new(3)))

    result = postorder_traversal(root)

    expect(result).to eq([3, 2, 1])
  end

  it "2" do
    root = TreeNode.new(1)

    result = postorder_traversal(root)

    expect(result).to eq([1])
  end

  it "3" do
    root = nil

    result = postorder_traversal(root)

    expect(result).to eq([])
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

    result = postorder_traversal(root)

    expect(result).to eq([1, 2, 6, 7, 5, 12, 9])
  end
end
