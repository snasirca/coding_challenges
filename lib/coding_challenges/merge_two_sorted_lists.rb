require "ostruct"

module CodingChallenges
  class MergeTwoSortedLists
    def merge_two_lists(list1, list2)
      return merge_two_lists(list2, list1) if list1 == nil && list2 != nil
      dummy = OpenStruct.new(next: list1)
      prev = dummy
      curr = list1
      candidate = list2
      while curr != nil && candidate != nil
        if candidate.val <= curr.val
          prev.next = candidate
          prev = candidate

          next_candidate = candidate.next
          candidate.next = curr
          candidate = next_candidate
        elsif candidate.val > curr.val && curr.next != nil
          prev = curr
          curr = curr.next
        else
          curr.next = candidate
          candidate = nil
        end
      end
      dummy.next
    end
  end
end
