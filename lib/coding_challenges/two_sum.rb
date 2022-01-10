module CodingChallenges
  class TwoSum
    def two_sum_1(nums, target)
      nums.each_with_index do |num, index|
        ((index + 1)..(nums.length - 1)).each do |subsequent_index|
          a = num
          b = nums[subsequent_index]
          return [index, subsequent_index] if a + b == target
        end
      end
    end

    def two_sum(nums, target)
      lookup_table = {}
      nums.each_with_index do |num, index|
        diff = target - num
        if lookup_table.key?(diff)
          other_num_index = lookup_table[diff]
          return [other_num_index, index]
        else
          lookup_table[num] = index
        end
      end
    end

    def two_sum_input_array_is_sorted(nums, target)
      lookup_table = {}
      nums.each_with_index do |num, index|
        diff = target - num
        if lookup_table.key?(diff)
          other_num_index = lookup_table[diff]
          return [other_num_index + 1, index + 1]
        else
          lookup_table[num] = index
        end
      end
    end
  end
end
