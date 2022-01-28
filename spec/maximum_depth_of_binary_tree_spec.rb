require "coding_challenges/maximum_depth_of_binary_tree"

RSpec.describe "Solution" do
  it "1" do
    root =
      TreeNode.new(3,
        TreeNode.new(9),
        TreeNode.new(20,
          TreeNode.new(15),
          TreeNode.new(7)
        )
      )

    result = max_depth(root)

    expect(result).to eq(3)
  end

  it "2" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(2)
      )

    result = max_depth(root)

    expect(result).to eq(2)
  end

  it "3" do
    root = TreeNode.new(1)

    result = max_depth(root)

    expect(result).to eq(1)
  end

  it "4" do
    root = nil

    result = max_depth(root)

    expect(result).to eq(0)
  end
end
