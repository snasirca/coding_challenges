require 'rspec/autorun'
require "algorithms"

include Containers

def zigzag_level_order(root)
  return [] unless root

  result = []
  curr_level = []
  forewards = true
  nodes = Deque.new([root, nil])

  while nodes.length > 0
    curr = forewards ? nodes.pop_front : nodes.pop_back
    if curr
      curr_level << curr.val
      if forewards
        nodes.push_back(curr.left) if curr.left
        nodes.push_back(curr.right) if curr.right
      else
        nodes.push_front(curr.right) if curr.right
        nodes.push_front(curr.left) if curr.left
      end
    else
      result << curr_level
      curr_level = []
      if nodes.length > 0
        if forewards
          nodes.push_front(nil)
        else
          nodes.push_back(nil)
        end
      end
      forewards = !forewards
    end
  end

  result
end

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

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
