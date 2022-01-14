module CodingChallenges
  class RemoveNthNodeFromEndOfList
    def remove_nth_from_end(head, n)
      length = 1
      curr_node = head
      while curr_node.next != nil
        length += 1
        curr_node = curr_node.next
      end

      nodes_until_to_delete = length - n
      prev_node = nil
      curr_node = head
      while nodes_until_to_delete != 0
        prev_node = curr_node
        curr_node = curr_node.next
        nodes_until_to_delete -= 1
      end

      if prev_node != nil
        prev_node.next = curr_node.next
        head
      else
        curr_node.next
      end
    end
  end
end
