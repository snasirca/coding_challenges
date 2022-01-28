require "coding_challenges/linked_list_cycle"

RSpec.describe "Solution" do
  it "1" do
    tail = ListNode.new(4)
    pos2 = ListNode.new(2, ListNode.new(0, tail))
    tail.next = pos2
    head = ListNode.new(3, pos2)

    result = hasCycle(head)

    expect(result).to eq(true)
  end

  it "2" do
    tail = ListNode.new(2)
    pos0 = ListNode.new(1, tail)
    tail.next = pos0
    head = pos0

    result = hasCycle(head)

    expect(result).to eq(true)
  end

  it "3" do
    head = ListNode.new(1)

    result = hasCycle(head)

    expect(result).to eq(false)
  end

  it "4" do
    tail = ListNode.new(4)
    tail.next = tail
    head = ListNode.new(3, ListNode.new(2, ListNode.new(0, tail)))

    result = hasCycle(head)

    expect(result).to eq(true)
  end

  it "5" do
    head = ListNode.new(1)
    head.next = head

    result = hasCycle(head)

    expect(result).to eq(true)
  end

  it "6" do
    head = ListNode.new(1, ListNode.new(2))

    result = hasCycle(head)

    expect(result).to eq(false)
  end

  it "7" do
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3)))

    result = hasCycle(head)

    expect(result).to eq(false)
  end
end
