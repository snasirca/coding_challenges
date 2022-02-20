require "coding_challenges/merge_nodes_in_between_zeros"

RSpec.describe "Solution" do
  it "1" do
    head = ListNode.new(0, ListNode.new(3, ListNode.new(1, ListNode.new(0, ListNode.new(4, ListNode.new(5, ListNode.new(2, ListNode.new(0))))))))

    result = merge_nodes(head)

    expect(result.val).to eq(4)
    expect(result.next.val).to eq(11)
  end

  it "2" do
    head = ListNode.new(0, ListNode.new(1, ListNode.new(0, ListNode.new(3, ListNode.new(0, ListNode.new(2, ListNode.new(2, ListNode.new(0))))))))

    result = merge_nodes(head)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(3)
    expect(result.next.next.val).to eq(4)
  end
end
