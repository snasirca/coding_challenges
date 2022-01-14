module CodingChallenges
  class ReverseLinkedList
    def reverse_list(head)
      prev_node = nil
      curr_node = head
      while curr_node != nil
        next_temp = curr_node.next
        curr_node.next = prev_node
        prev_node = curr_node
        curr_node = next_temp
      end
      prev_node
    end

    def reverse_list_1(head)
      prev_node = nil
      curr_node = head
      next_node = curr_node.next if curr_node
      while next_node != nil
        next_next_node = next_node.next
        curr_node.next = prev_node
        next_node.next = curr_node
        prev_node = curr_node
        curr_node = next_node
        next_node = next_next_node
      end
      curr_node
    end
  end
end
