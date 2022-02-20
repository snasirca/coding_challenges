require "list_node"

def merge_nodes(head)
  dummy = ListNode.new(nil)
  merged_prev = dummy
  curr = head.next
  curr_sum = 0
  while curr != nil
    if curr.val == 0
      merged_prev.next = ListNode.new(curr_sum)
      merged_prev = merged_prev.next
      curr_sum = 0
    else
      curr_sum += curr.val
    end
    curr = curr.next
  end
  dummy.next
end
