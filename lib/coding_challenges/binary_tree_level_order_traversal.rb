module CodingChallenges
  class BinaryTreeLevelOrderTraversal
    def level_order(root)
      return [] if root == nil
      left_level_order = level_order(root.left)
      right_level_order = level_order(root.right)
      merged_sublevels_order = []
      i = 0
      while i < [left_level_order.length, right_level_order.length].max
        merged_sublevels_order <<
          (left_level_order[i] ? left_level_order[i] : []) +
            (right_level_order[i] ? right_level_order[i] : [])
        i += 1
      end
      [[root.val]] + merged_sublevels_order
    end
  end
end
