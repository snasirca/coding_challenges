# This was problem #2 from Daily Coding Problems
module CodingChallenges
  class ProductOfArrayExceptSelf
    def product_except_self(nums)
      first_index = 0
      last_index = nums.length - 1
      lookup_table = {
        [first_index, first_index] => nums[first_index],
        [last_index, last_index] => nums[last_index]
      }
      i = 1
      while i < nums.length - 1
        curr_num = nums[i]
        lookup_table[[0, i]] = lookup_table[[first_index, i - 1]] * curr_num
        i += 1
      end
      i = last_index - 1
      while i > 0
        curr_num = nums[i]
        lookup_table[[i, last_index]] = lookup_table[[i + 1, last_index]] * curr_num
        i -= 1
      end
      nums.length.times.map do |index|
        if index == first_index
          lookup_table[[first_index + 1, last_index]]
        elsif index == last_index
          lookup_table[[first_index, last_index - 1]]
        else
          lookup_table[[first_index, index - 1]] * lookup_table[[index + 1, last_index]]
        end
      end
    end
  end
end
