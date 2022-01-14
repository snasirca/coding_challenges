module CodingChallenges
  class DeleteNodeInALinkedList
    def delete_node(node)
      next_node = node.next
      while next_node != nil
        node.val = node.next.val
        if node.next.next == nil
          node.next = nil
          break
        end
        node = next_node
        next_node = node.next
      end
    end
  end
end
