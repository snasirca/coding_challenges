require "algorithms"

include Containers

module CodingChallenges
  class InorderSuccessorInBST
    def inorder_successor(root, p)
      stack = Stack.new
      p_found = false
      curr = root
      while curr != nil || stack.any?
        while curr != nil
          stack.push(curr)
          curr = curr.left
        end
        curr = stack.pop
        return curr if p_found
        p_found = true if curr.val == p.val
        curr = curr.right
      end
      nil
    end
  end
end
