require "coding_challenges/binary_tree_vertical_order_traversal"

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

    result = vertical_order(root)

    expect(result).to eq([[9], [3, 15], [20], [7]])
  end

  it "2" do
    root =
      TreeNode.new(3,
        TreeNode.new(9,
          TreeNode.new(4),
          TreeNode.new(0)
        ),
        TreeNode.new(8,
          TreeNode.new(1),
          TreeNode.new(7)
        )
      )

    result = vertical_order(root)

    expect(result).to eq([[4], [9], [3, 0, 1], [8], [7]])
  end

  it "3" do
    root =
      TreeNode.new(3,
        TreeNode.new(9,
          TreeNode.new(4),
          TreeNode.new(0,
            nil,
            TreeNode.new(2)
          )
        ),
        TreeNode.new(8,
          TreeNode.new(1,
            TreeNode.new(5)
          ),
          TreeNode.new(7)
        )
      )

    result = vertical_order(root)

    expect(result).to eq([[4], [9, 5], [3, 0, 1], [8, 2], [7]])
  end

  it "4" do
    root = nil

    result = vertical_order(root)

    expect(result).to eq([])
  end

  it "5" do
    root = TreeNode.new(3)

    result = vertical_order(root)

    expect(result).to eq([[3]])
  end
end
