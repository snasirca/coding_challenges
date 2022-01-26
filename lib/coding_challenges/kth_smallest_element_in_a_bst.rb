require "algorithms"

include Containers

module CodingChallenges
  class KthSmallestElementInABST
    def kth_smallest(root, k)
      stack = Stack.new
      counter = 0
      curr = root
      while curr != nil || stack.any?
        while curr != nil
          stack.push(curr)
          curr = curr.left
        end
        curr = stack.pop
        counter += 1
        return curr.val if counter == k
        curr = curr.right
      end
    end
  end
end
