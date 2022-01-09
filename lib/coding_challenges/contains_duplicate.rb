module CodingChallenges
  class ContainsDuplicate
    def contains_duplicate(nums)
      values_seen = {}
      nums.each do |num|
        if values_seen.key?(num)
          return true
        else
          values_seen[num] = true
        end
      end
      false
    end
  end
end
