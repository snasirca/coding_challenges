module CodingChallenges
  class MaximumDifferenceBetweenIncreasingElements
    def maximum_difference(nums)
      min_seen = nums[0]
      max_diff = -1
      nums[1..-1].each do |next_num|
        next if next_num == min_seen
        max_diff = [max_diff, next_num - min_seen].max
        min_seen = [min_seen, next_num].min
      end
      max_diff
    end
  end
end
