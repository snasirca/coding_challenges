require "coding_challenges/inorder_successor_in_bst"

RSpec.describe "Solution" do
  it "1" do
    p = TreeNode.new(1)
    root =
      TreeNode.new(2,
        p,
        TreeNode.new(3)
      )

    result = inorder_successor(root, p)

    expect(result.val).to eq(2)
  end

  it "2" do
    p = TreeNode.new(6)
    root =
      TreeNode.new(5,
        TreeNode.new(3,
          TreeNode.new(2,
            TreeNode.new(1)
          ),
          TreeNode.new(4)
        ),
        p
      )

    result = inorder_successor(root, p)

    expect(result).to eq(nil)
  end

  it "3" do
    p = TreeNode.new(1,
      TreeNode.new(0))
    root =
      TreeNode.new(2,
        p,
        TreeNode.new(3)
      )

    result = inorder_successor(root, p)

    expect(result.val).to eq(2)
  end

  it "4" do
    p = TreeNode.new(3)
    root =
      TreeNode.new(4,
        TreeNode.new(2,
          TreeNode.new(1),
          p
        ),
        TreeNode.new(5)
      )

    result = inorder_successor(root, p)

    expect(result.val).to eq(4)
  end

  it "5 - good bst edge case" do
    root =
      TreeNode.new(2,
        nil,
        TreeNode.new(3)
      )
    p = root

    result = inorder_successor(root, p)

    expect(result.val).to eq(3)
  end

  it "6 - good bst edge case" do
    p = TreeNode.new(2,
      TreeNode.new(0),
      TreeNode.new(4,
        TreeNode.new(3),
        TreeNode.new(5)
      )
    )
    root =
      TreeNode.new(6,
        p,
        TreeNode.new(8,
          TreeNode.new(7),
          TreeNode.new(9))
      )

    result = inorder_successor(root, p)

    expect(result.val).to eq(3)
  end
end
