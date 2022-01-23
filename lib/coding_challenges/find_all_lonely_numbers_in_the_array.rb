module CodingChallenges
  class FindAllLonelyNumbersInTheArray
    def find_lonely(nums)
      result = []
      nums.sort!
      nums.each_with_index do |num, index|
        prev_num = index > 0 ? nums[index - 1] : nil
        next_num = index < nums.length - 1 ? nums[index + 1] : nil
        if (prev_num == num - 1) || (prev_num == num) ||
          (next_num == num + 1) || (next_num == num)
          next
        end
        result << num
      end
      result
    end
  end
end
