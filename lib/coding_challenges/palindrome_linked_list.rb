require "ostruct"

module CodingChallenges
  class PalindromeLinkedList
    def is_palindrome(head)
      curr_node = head
      curr_copy_node = nil
      list_length = 0
      while curr_node != nil
        list_length += 1
        curr_copy_node = OpenStruct.new(val: curr_node.val, next: curr_copy_node)
        curr_node = curr_node.next
      end
      curr_node = head
      i = 0
      while i < list_length / 2
        return false if curr_node.val != curr_copy_node.val

        curr_node = curr_node.next
        curr_copy_node = curr_copy_node.next
        i += 1
      end
      true
    end
  end
end
