module CodingChallenges
  class LinkedListCycle
    def hasCycle(head)
      observed = {}
      curr = head
      while curr != nil
        return true if observed.key?(curr.object_id)
        observed[curr.object_id] = true
        curr = curr.next
      end
      false
    end
  end
end
