require 'rspec/autorun'

def getIntersectionNode(headA, headB)
  if headA.next.nil? && headB.next.nil?
    return headA == headB ? headA : nil
  end

  headA_length = length_of_list(headA)
  headB_length = length_of_list(headB)
  skip_longer_list_by = (headA_length - headB_length).abs
  curr_headA = headA
  curr_headB = headB
  while skip_longer_list_by > 0
    if headA_length > headB_length
      curr_headA = curr_headA.next
    else
      curr_headB = curr_headB.next
    end
    skip_longer_list_by -= 1
  end
  while curr_headA != nil && curr_headB != nil
    return curr_headA if curr_headA == curr_headB
    curr_headA = curr_headA.next
    curr_headB = curr_headB.next
  end
  nil
end

def length_of_list(head)
  length = 0
  curr_node = head
  while curr_node != nil
    length += 1
    curr_node = curr_node.next
  end
  length
end

RSpec.describe "Solution" do
  it "4" do
    headA = ListNode.new(1, ListNode.new(2))
    headB = ListNode.new(1)
    intersection = ListNode.new(3)
    headA.next.next = intersection
    headB.next = intersection

    result = getIntersectionNode(headA, headB)

    expect(result).to eq(intersection)
  end
  it "3" do
    headA = ListNode.new(4, ListNode.new(1))
    headB = ListNode.new(5, ListNode.new(6, ListNode.new(1)))
    intersection = ListNode.new(8, ListNode.new(4, ListNode.new(5)))
    headA.next.next = intersection
    headB.next.next.next = intersection

    result = getIntersectionNode(headA, headB)

    expect(result).to eq(intersection)
  end
  it "2" do
    headA = ListNode.new(1)
    headB = headA

    result = getIntersectionNode(headA, headB)

    expect(result).to eq(headA)
  end
  it "1" do
    headA = ListNode.new(1)
    headB = ListNode.new(1)

    result = getIntersectionNode(headA, headB)

    expect(result).to eq(nil)
