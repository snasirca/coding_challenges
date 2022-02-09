require "coding_challenges/lowest_common_ancestor_of_a_binary_tree"

RSpec.describe "Solution" do
  it "1" do
    p = TreeNode.new(5,
      TreeNode.new(6),
      TreeNode.new(2,
        TreeNode.new(7),
        TreeNode.new(4),
      )
    )
    q = TreeNode.new(1,
      TreeNode.new(0),
      TreeNode.new(8)
    )
    root =
      TreeNode.new(3,
        p,
        q
      )

    result = lowest_common_ancestor(root, p, q)

    expect(result.val).to eq(3)
  end

  it "2" do
    p = TreeNode.new(7)
    q = TreeNode.new(2,
      p,
      TreeNode.new(4),
    )
    root =
      TreeNode.new(3,
        TreeNode.new(5,
          TreeNode.new(6),
          q
        ),
        TreeNode.new(1,
          TreeNode.new(0),
          TreeNode.new(8)
        )
      )

    result = lowest_common_ancestor(root, p, q)

    expect(result.val).to eq(2)
  end

  it "3" do
    q = TreeNode.new(4)
    p = TreeNode.new(5,
      TreeNode.new(6),
      TreeNode.new(2,
        TreeNode.new(7),
        q,
      )
    )
    root =
      TreeNode.new(3,
        p,
        TreeNode.new(1,
          TreeNode.new(0),
          TreeNode.new(8)
        )
      )

    result = lowest_common_ancestor(root, p, q)

    expect(result.val).to eq(5)
  end

  it "4" do
    q = TreeNode.new(2)
    p = TreeNode.new(1,
      q
    )
    root = p

    result = lowest_common_ancestor(root, p, q)

    expect(result.val).to eq(1)
  end
end
