module CodingChallenges
  class RotateArray
    def rotate_1_failing(nums, k)
      if nums.length % k == 0
        nums.length.times do |index|
          from_index = index
          to_index = index + k < nums.length ? index + k : index + k - nums.length
          temp_num = nums[to_index]
          nums[to_index] = nums[from_index]
          nums[from_index] = temp_num
        end
      else
        prior_index = 0
        prior_num_held = nums[prior_index]
        s = k > nums.length ? k % nums.length : k
        nums.length.times do |_|
          to_index = prior_index + s < nums.length ? prior_index + s : prior_index + s - nums.length
          new_num_held = nums[to_index]
          nums[to_index] = prior_num_held
          prior_index = to_index
          prior_num_held = new_num_held
        end
      end
      nums
    end

    def rotate(nums, k)
      starting_point_index = 0
      prior_index = 0
      prior_num_held = nums[prior_index]
      s = k > nums.length ? k % nums.length : k
      nums.length.times do |_|
        to_index = prior_index + s < nums.length ? prior_index + s : prior_index + s - nums.length
        new_num_held = nums[to_index]
        nums[to_index] = prior_num_held

        if to_index == starting_point_index
          prior_index = to_index + 1
          starting_point_index = prior_index
          prior_num_held = nums[prior_index]
        else
          prior_index = to_index
          prior_num_held = new_num_held
        end
      end
      nums
    end
  end
end
