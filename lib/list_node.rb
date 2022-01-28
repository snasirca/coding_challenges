class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end

  def to_s
    "{val: #{@val}, next: #{@next.val if @next}}"
  end
end
