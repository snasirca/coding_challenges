require "coding_challenges/remove_nth_node_from_end_of_list"

RSpec.describe "Solution" do
  it "1" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(3,
            ListNode.new(4,
              ListNode.new(5
              )))))
    n = 2

    result = remove_nth_from_end(head, n)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(2)
    expect(result.next.next.val).to eq(3)
    expect(result.next.next.next.val).to eq(5)
    expect(result.next.next.next.next).to eq(nil)
  end

  it "2" do
    head = ListNode.new(1)
    n = 1

    result = remove_nth_from_end(head, n)

    expect(result).to eq(nil)
  end

  it "3" do
    head =
      ListNode.new(1,
        ListNode.new(2,
        ))
    n = 1

    result = remove_nth_from_end(head, n)

    expect(result.val).to eq(1)
    expect(result.next).to eq(nil)
  end

  it "4" do
    head =
      ListNode.new(1,
        ListNode.new(2,
        ))
    n = 2

    result = remove_nth_from_end(head, n)

    expect(result.val).to eq(2)
    expect(result.next).to eq(nil)
  end

  it "5" do
    head =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(3,
          )))
    n = 3

    result = remove_nth_from_end(head, n)

    expect(result.val).to eq(2)
    expect(result.next.val).to eq(3)
    expect(result.next.next).to eq(nil)
  end
end
