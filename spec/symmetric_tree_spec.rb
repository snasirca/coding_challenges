require "coding_challenges/symmetric_tree"

RSpec.describe "Solution" do
  it "1" do
    root =
      TreeNode.new(1,
        TreeNode.new(2,
          TreeNode.new(3),
          TreeNode.new(4)
        ),
        TreeNode.new(2,
          TreeNode.new(4),
          TreeNode.new(3)
        )
      )

    result = is_symmetric(root)

    expect(result).to eq(true)
  end

  it "2" do
    root =
      TreeNode.new(1,
        TreeNode.new(2,
          nil,
          TreeNode.new(3)
        ),
        TreeNode.new(2,
          nil,
          TreeNode.new(3)
        )
      )

    result = is_symmetric(root)

    expect(result).to eq(false)
  end

  it "3" do
    root = TreeNode.new(1)

    result = is_symmetric(root)

    expect(result).to eq(true)
  end

  it "4" do
    root =
      TreeNode.new(1,
        nil,
        TreeNode.new(2)
      )

    result = is_symmetric(root)

    expect(result).to eq(false)
  end

  it "5" do
    root =
      TreeNode.new(1,
        TreeNode.new(2),
        nil
      )

    result = is_symmetric(root)

    expect(result).to eq(false)
  end

  it "6" do
    root =
      TreeNode.new(5,
        TreeNode.new(4,
          nil,
          TreeNode.new(1,
            TreeNode.new(2)
          )),
        TreeNode.new(1,
          nil,
          TreeNode.new(4,
            TreeNode.new(2)
          ))
      )

    result = is_symmetric(root)

    expect(result).to eq(false)
  end
end
