module CodingChallenges
  class CountElementsWithStrictlySmallerAndGreaterElements
    def count_elements(nums)
      return 0 unless nums.length > 2
      nums.sort!
      return 0 if nums.first == nums.last

      result = nums.length - 2

      i = 0
      while nums[i] == nums[i + 1]
        result -= 1
        i += 1
      end

      j = nums.length - 1
      while nums[j] == nums[j - 1]
        result -= 1
        j -= 1
      end

      result
    end
  end
end
