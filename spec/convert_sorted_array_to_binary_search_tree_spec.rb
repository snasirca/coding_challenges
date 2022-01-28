require "coding_challenges/convert_sorted_array_to_binary_search_tree"

RSpec.describe "Solution" do
  it "1" do
    nums = [-10, -3, 0, 5, 9]
    expected_tree =
      TreeNode.new(0,
        TreeNode.new(-3,
          TreeNode.new(-10)
        ),
        TreeNode.new(9,
          TreeNode.new(5)
        ),
      )

    result = sorted_array_to_bst(nums)

    expect(result).to eq(expected_tree)
  end

  it "2" do
    nums = [1, 3]
    expected_tree =
      TreeNode.new(3,
        TreeNode.new(1)
      )

    result = sorted_array_to_bst(nums)

    expect(result).to eq(expected_tree)
  end

  it "3" do
    nums = [1]
    expected_tree = TreeNode.new(1)

    result = sorted_array_to_bst(nums)

    expect(result).to eq(expected_tree)
  end

  it "4" do
    nums = [-10, -3, 0, 5, 9, 10]
    expected_tree =
      TreeNode.new(5,
        TreeNode.new(-3,
          TreeNode.new(-10),
          TreeNode.new(0)
        ),
        TreeNode.new(10,
          TreeNode.new(9)
        ),
      )

    result = sorted_array_to_bst(nums)

    expect(result).to eq(expected_tree)
  end
end
