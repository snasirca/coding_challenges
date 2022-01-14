require "coding_challenges/delete_node_in_a_linked_list"

RSpec.describe CodingChallenges::DeleteNodeInALinkedList do
  subject { CodingChallenges::DeleteNodeInALinkedList.new }

  class ListNode
    attr_accessor :val, :next
    def initialize(val, next_val = nil)
      @val = val
      @next = next_val
    end
  end

  it "1" do
    node = ListNode.new(5, ListNode.new(1, ListNode.new(9)))
    head = ListNode.new(4, node)

    subject.delete_node(node)

    expect(head.val).to eq(4)
    expect(head.next.val).to eq(1)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end

  it "2" do
    node = ListNode.new(1, ListNode.new(9))
    head = ListNode.new(4, ListNode.new(5, node))

    subject.delete_node(node)

    expect(head.val).to eq(4)
    expect(head.next.val).to eq(5)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end

  it "3" do
    head = ListNode.new(4, ListNode.new(5, ListNode.new(1, ListNode.new(9))))
    node = head

    subject.delete_node(node)

    expect(head.val).to eq(5)
    expect(head.next.val).to eq(1)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next).to eq(nil)
  end
end
