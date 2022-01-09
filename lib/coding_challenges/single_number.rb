module CodingChallenges
  class SingleNumber
    def single_number(nums)
      lookup_table = Array.new(3 * 10**4 * 2, nil)
      nums.each_with_index do |num, index|
        entry = lookup_table[num]
        if entry == nil
          lookup_table[num] = index
        else
          nums[lookup_table[num]] = nil
          nums[index] = nil
        end
      end
      nums.each do |num|
        return num if num != nil
      end
    end
  end
end
