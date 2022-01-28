require "coding_challenges/delete_node_in_a_linked_list"

RSpec.describe "Solution" do
  it "1" do
    node = ListNode.new(5, ListNode.new(1, ListNode.new(9)))
    head = ListNode.new(4, node)

    delete_node(node)

    expect(head.val).to eq(4)
    expect(head.next.val).to eq(1)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end

  it "2" do
    node = ListNode.new(1, ListNode.new(9))
    head = ListNode.new(4, ListNode.new(5, node))

    delete_node(node)

    expect(head.val).to eq(4)
    expect(head.next.val).to eq(5)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end

  it "3" do
    head = ListNode.new(4, ListNode.new(5, ListNode.new(1, ListNode.new(9))))
    node = head

    delete_node(node)

    expect(head.val).to eq(5)
    expect(head.next.val).to eq(1)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end
end
