module CodingChallenges
  class MoveZeroes
    def move_zeroes_1(nums)
      zeroes_seen = 0
      insertion_point = 0
      index = 0
      while index < nums.length
        curr_num = nums[index]
        if curr_num == 0
          zeroes_seen += 1
        else
          nums[insertion_point] = curr_num
          insertion_point += 1
        end
        index += 1
      end
      while index - zeroes_seen < nums.length
        nums[index - zeroes_seen] = 0
        zeroes_seen -= 1
      end
      nums
    end

    def move_zeroes(nums)
      insertion_point = 0
      index = 0
      while index < nums.length
        curr_num = nums[index]
        if curr_num != 0
          nums[index] = 0 if nums[insertion_point] == 0
          nums[insertion_point] = curr_num
          insertion_point += 1
        end
        index += 1
      end
      nums
    end
  end
end
