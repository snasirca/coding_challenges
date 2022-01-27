module CodingChallenges
  class FirstMissingPositive
    def first_missing_positive(nums)
      # Intuition: Smallest missing value can be n + 1
      # Steps:
      # 1) Check if 1 is already present, if not, then return 1
      # 2) Replace unnecessary elements like 0, -1, and numbers greater than
      # n + 1 with 1
      # 3) Go through each value and mark it as being present or not in the array
      # using a negative or positive sign. Negative means present.
      # 4) Go through the array to find the first positive sign. Return that index.
      #

      return 1 unless nums.include?(1)

      max_possible = nums.length
      nums.map! do |num|
        num <= 0 || num > max_possible ? 1 : num
      end

      nums.each do |num|
        actual_num = num.abs
        nums[actual_num - 1] *= -1 if nums[actual_num - 1] > 0
      end

      nums.each_with_index do |num, index|
        if num > 0
          return index + 1
        end
      end
      max_possible + 1
    end
  end
end
