def three_sum(nums)
  result = []
  nums.sort!
  nums.length.times do |i|
    break if nums[i] > 0
    if i == 0 || nums[i] != nums[i - 1]
      result += two_sum(nums, i)
    end
  end
  result
end

def two_sum(nums, i)
  result = []
  seen = Set.new()
  j = i + 1
  while j < nums.length
    complement = -(nums[i] + nums[j])
    if seen.member?(complement)
      result << [nums[i], nums[j], complement].sort
      while j + 1 < nums.length && nums[j] == nums[j + 1]
        j += 1
      end
    end
    seen << nums[j]
    j += 1
  end
  result
end
