require "coding_challenges/populating_next_right_pointers_in_each_node"

RSpec.describe CodingChallenges::PopulatingNextRightPointersInEachNode do
  subject { CodingChallenges::PopulatingNextRightPointersInEachNode.new }

  it "4" do
    root = TreeNode.new(1)

    root = connect(root)

    expect(root.val).to eq(1)
    expect(root.next).to eq(nil)
  end

  it "3" do
    root = nil

    root = connect(root)

    expect(root).to eq(nil)
  end

  it "2" do
    root = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))

    root = connect(root)

    expect(root.val).to eq(1)
    expect(root.next).to eq(nil)

    expect(root.left.val).to eq(2)
    expect(root.left.next.val).to eq(3)
    expect(root.right.val).to eq(3)
    expect(root.right.next).to eq(nil)
  end

  it "1" do
    root = TreeNode.new(1,
      TreeNode.new(2, TreeNode.new(4), TreeNode.new(5)),
      TreeNode.new(3, TreeNode.new(6), TreeNode.new(7))
    )

    root = connect(root)

    expect(root.val).to eq(1)
    expect(root.next).to eq(nil)

    expect(root.left.val).to eq(2)
    expect(root.left.next.val).to eq(3)
    expect(root.right.val).to eq(3)
    expect(root.right.next).to eq(nil)

    expect(root.left.left.val).to eq(4)
    expect(root.left.left.next.val).to eq(5)
    expect(root.left.right.val).to eq(5)
    expect(root.left.right.next.val).to eq(6)
    expect(root.right.left.val).to eq(6)
    expect(root.right.left.next.val).to eq(7)
    expect(root.right.right.val).to eq(7)
    expect(root.right.right.next).to eq(nil)
  end
end
