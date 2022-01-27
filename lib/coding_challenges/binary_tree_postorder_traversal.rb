require "algorithms"

include Containers

module CodingChallenges
  class BinaryTreePostorderTraversal
    def postorder_traversal(root)
      result = []
      stack = Stack.new
      curr = root
      while curr != nil || stack.any?
        if curr != nil
          stack.push(curr)
          curr = curr.left
        else
          right = stack.next.right

          if right != nil
            curr = right
          else
            prev = stack.pop
            result << prev.val
            # when the next node is the parent of prev and it is the right child
            while stack.any? && prev == stack.next.right
              # add the parent which is the root of this subtree to the result
              # because we know we've completed looking at the right subtree
              prev = stack.pop
              result << prev.val
            end
          end
        end
      end
      result
    end
  end
end
