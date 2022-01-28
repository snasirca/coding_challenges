require "coding_challenges/binary_tree_zigzag_level_order_traversal"

RSpec.describe "Solution" do
  it "5" do
    root = TreeNode.new(1, TreeNode.new(2, TreeNode.new(3, TreeNode.new(4), TreeNode.new(5))))

    result = zigzag_level_order(root)

    expect(result).to eq([[1], [2], [3], [5, 4]])
  end
  it "4" do
    root = TreeNode.new(3, TreeNode.new(9, TreeNode.new(4)), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))

    result = zigzag_level_order(root)

    expect(result).to eq([[3], [20, 9], [4, 15, 7]])
  end
  it "3" do
    root = TreeNode.new(3, TreeNode.new(9), TreeNode.new(20, TreeNode.new(15), TreeNode.new(7)))

    result = zigzag_level_order(root)

    expect(result).to eq([[3], [20, 9], [15, 7]])
  end
  it "2" do
    root = TreeNode.new(1)

    result = zigzag_level_order(root)

    expect(result).to eq([[1]])
  end
  it "1" do
    root = nil

    result = zigzag_level_order(root)

    expect(result).to eq([])
  end
end
