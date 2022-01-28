require "list_node"

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
