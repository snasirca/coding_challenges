class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def to_s
    "{val: #{@val}, left: #{@left.val if @left}, right: #{@right.val if @right}}"
  end
end