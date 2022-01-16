module CodingChallenges
  class SymmetricTree
    def is_symmetric(root)
      is_mirror(root, root)
    end

    def is_mirror(left, right)
      return left == right if left == nil || right == nil
      left.val == right.val &&
        is_mirror(left.left, right.right) &&
        is_mirror(left.right, right.left)
    end

    def is_symmetric_fail(root)
      inorder_traversal = inorder(root)
      i = 0
      j = inorder_traversal.length - 1
      while i < inorder_traversal.length / 2
        return false if inorder_traversal[i] != inorder_traversal[j]
        i += 1
        j -= 1
      end
      true
    end

    def inorder(node)
      return [node.val] if node.left == nil && node.right == nil
      order = []
      order += node.left ? inorder(node.left) : [nil]
      order += [node.val]
      order += node.right ? inorder(node.right) : [nil]
      order
    end

    def is_symmetric_1(root)
      return true if root.left == nil && root.right == nil
      left_subtree_inorder = inorder(root.left)
      right_subtree_inorder = inorder(root.right)
      return false if left_subtree_inorder.length != right_subtree_inorder.length
      i = 0
      j = right_subtree_inorder.length - 1
      while i < left_subtree_inorder.length
        return false if left_subtree_inorder[i] != right_subtree_inorder[j]
        i += 1
        j -= 1
      end
      true
    end
  end
end
