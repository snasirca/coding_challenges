require "coding_challenges/merge_two_sorted_lists"

RSpec.describe "Solution" do
  it "1" do
    list1 =
      ListNode.new(1,
        ListNode.new(2,
          ListNode.new(4,
          )))
    list2 =
      ListNode.new(1,
        ListNode.new(3,
          ListNode.new(4,
          )))

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(1)
    expect(result.next.next.val).to eq(2)
    expect(result.next.next.next.val).to eq(3)
    expect(result.next.next.next.next.val).to eq(4)
    expect(result.next.next.next.next.next.val).to eq(4)
    expect(result.next.next.next.next.next.next).to eq(nil)
  end

  it "2" do
    list1 = nil
    list2 = nil

    result = merge_two_lists(list1, list2)

    expect(result).to eq(nil)
  end

  it "3" do
    list1 = nil
    list2 = ListNode.new(0)

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(0)
    expect(result.next).to eq(nil)
  end

  it "4" do
    list1 = ListNode.new(0)
    list2 = nil

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(0)
    expect(result.next).to eq(nil)
  end

  it "5" do
    list1 = ListNode.new(1)
    list2 = ListNode.new(1)

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(1)
    expect(result.next.next).to eq(nil)
  end

  it "6" do
    list1 = ListNode.new(1)
    list2 = ListNode.new(1, ListNode.new(2))

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(1)
    expect(result.next.next.val).to eq(2)
    expect(result.next.next.next).to eq(nil)
  end

  it "7" do
    list1 = ListNode.new(1, ListNode.new(2))
    list2 = ListNode.new(1)

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(1)
    expect(result.next.next.val).to eq(2)
    expect(result.next.next.next).to eq(nil)
  end

  it "8" do
    list1 = ListNode.new(2)
    list2 = ListNode.new(1)

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(2)
    expect(result.next.next).to eq(nil)
  end

  it "9" do
    list1 = ListNode.new(1)
    list2 = ListNode.new(2)

    result = merge_two_lists(list1, list2)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(2)
    expect(result.next.next).to eq(nil)
  end
end
