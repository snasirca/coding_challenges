require "coding_challenges/add_two_numbers"

RSpec.describe "Solution" do
  it "4" do
    l1 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9)))))))
    l2 = ListNode.new(9, ListNode.new(9, ListNode.new(9, ListNode.new(9))))

    head = add_two_numbers(l1, l2)

    expect(head.val).to eq(8)
    expect(head.next.val).to eq(9)
    expect(head.next.next.val).to eq(9)
    expect(head.next.next.next.val).to eq(9)
    expect(head.next.next.next.next.val).to eq(0)
    expect(head.next.next.next.next.next.val).to eq(0)
    expect(head.next.next.next.next.next.next.val).to eq(0)
    expect(head.next.next.next.next.next.next.next.val).to eq(1)
  end
  it "3" do
    l1 = ListNode.new(0)
    l2 = ListNode.new(0)

    head = add_two_numbers(l1, l2)

    expect(head.val).to eq(0)
    expect(head.next).to eq(nil)
  end
  it "2" do
    l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
    l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))

    head = add_two_numbers(l1, l2)

    expect(head.val).to eq(7)
    expect(head.next.val).to eq(0)
    expect(head.next.next.val).to eq(8)
  end
  it "1" do
    l1 = ListNode.new(2, ListNode.new(3, ListNode.new(3)))
    l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))

    head = add_two_numbers(l1, l2)

    expect(head.val).to eq(7)
    expect(head.next.val).to eq(9)
    expect(head.next.next.val).to eq(7)
  end
end
