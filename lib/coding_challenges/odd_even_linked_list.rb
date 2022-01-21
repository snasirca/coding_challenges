require 'rspec/autorun'

def odd_even_list(head)
  return head if head.nil? || head.next.nil? || head.next.next.nil?
  odd = head
  even = head.next
  curr_index = 3
  curr_node = head.next.next
  curr_odd = odd
  curr_even = even
  while curr_node != nil
    if curr_index % 2 == 0
      curr_even.next = curr_node
      curr_even = curr_node
    else
      curr_odd.next = curr_node
      curr_odd = curr_node
    end

    curr_node = curr_node.next
    curr_index += 1
  end
  curr_even.next = nil
  curr_odd.next = even
  odd
end

RSpec.describe "Solution" do
  it "5" do
    head = ListNode.new(2, ListNode.new(1, ListNode.new(3, ListNode.new(5, ListNode.new(6, ListNode.new(4, ListNode.new(7)))))))

    result = odd_even_list(head)

    expect(result.val).to eq(2)
    expect(result.next.val).to eq(3)
    expect(result.next.next.val).to eq(6)
    expect(result.next.next.next.val).to eq(7)
    expect(result.next.next.next.next.val).to eq(1)
    expect(result.next.next.next.next.next.val).to eq(5)
    expect(result.next.next.next.next.next.next.val).to eq(4)
    expect(result.next.next.next.next.next.next.next).to eq(nil)
  end
  it "4" do
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))

    result = odd_even_list(head)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(3)
    expect(result.next.next.val).to eq(5)
    expect(result.next.next.next.val).to eq(2)
    expect(result.next.next.next.next.val).to eq(4)
    expect(result.next.next.next.next.next).to eq(nil)
  end
  it "3" do
    head = ListNode.new(1, ListNode.new(2))

    result = odd_even_list(head)

    expect(result.val).to eq(1)
    expect(result.next.val).to eq(2)
    expect(result.next.next).to eq(nil)
  end
  it "2" do
    head = ListNode.new(1)

    result = odd_even_list(head)

    expect(result.val).to eq(1)
    expect(result.next).to eq(nil)
  end
  it "1" do
    head = nil

    result = odd_even_list(head)

    expect(result).to eq(nil)
  end
end

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end
