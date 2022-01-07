module CodingChallenges
  class MaximumDifferenceBetweenIncreasingElements
    def maximum_difference(nums)
      min_seen = nums[0]
      max_diff = -1
      index = 0
      while index < nums.length - 1
        next_num = nums[index + 1]
        index += 1
        next if next_num == min_seen
        max_diff = [max_diff, next_num - min_seen].max
        min_seen = [min_seen, next_num].min
      end
      max_diff
    end
  end
end
