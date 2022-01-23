module CodingChallenges
  class FindAllLonelyNumbersInTheArray
    def find_lonely(nums)
      lookup_table = {}
      nums.each do |num|
        if lookup_table.key?(num)
          lookup_table[num] += 1
        else
          lookup_table[num] = 1
        end
      end
      nums.filter do |num|
        if lookup_table[num] == 1 && !lookup_table.key?(num + 1) &&
          !lookup_table.key?(num - 1)
          num
        end
      end
    end

    def find_lonely_brute(nums)
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
