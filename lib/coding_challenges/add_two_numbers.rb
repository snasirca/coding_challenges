require 'rspec/autorun'

def add_two_numbers(l1, l2)
  curr_l1 = l1
  curr_l2 = l2
  carry = false
  result = nil
  prev_digit_node = nil
  while curr_l1 != nil || curr_l2 != nil || carry

    digit_sum = (curr_l1 ? curr_l1.val : 0) + (curr_l2 ? curr_l2.val : 0)
    if carry
      digit_sum += 1
      carry = false
    end
    if digit_sum > 9
      carry = true
      digit_sum = digit_sum % 10
    end
    digit_sum_node = ListNode.new(digit_sum)

    if prev_digit_node
      prev_digit_node.next = digit_sum_node
      prev_digit_node = prev_digit_node.next
    else
      prev_digit_node = digit_sum_node
      result = digit_sum_node
    end

    curr_l1 = curr_l1 ? curr_l1.next : nil
    curr_l2 = curr_l2 ? curr_l2.next : nil
  end
  result
end

RSpec.describe "Examples" do
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

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end
