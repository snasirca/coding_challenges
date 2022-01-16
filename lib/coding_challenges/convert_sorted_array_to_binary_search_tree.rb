require "tree_node"

module CodingChallenges
  class ConvertSortedArrayToBinarySearchTree
    def sorted_array_to_bst(nums)
      return nil if nums.empty?
      return TreeNode.new(nums.first) if nums.one?
      root_val_index = nums.length / 2
      root_val = nums[root_val_index]
      smaller_nums = nums[0..(root_val_index - 1)]
      larger_nums = nums[(root_val_index + 1)..-1]
      TreeNode.new(
        root_val,
        sorted_array_to_bst(smaller_nums),
        sorted_array_to_bst(larger_nums)
      )
    end
  end
end
