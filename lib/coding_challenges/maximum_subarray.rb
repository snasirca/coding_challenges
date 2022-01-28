def max_sub_array_brute1(nums)
  max_sum = nums[0] || 0
  outer_index = 0
  while outer_index < nums.length
    curr_num = nums[outer_index]
    curr_iteration_sum = curr_num

    inner_index = outer_index + 1
    while inner_index < nums.length
      next_num = nums[inner_index]
      curr_iteration_sum = curr_iteration_sum + next_num
      max_sum = curr_iteration_sum if curr_iteration_sum > max_sum

      inner_index += 1
    end

    outer_index += 1
  end
  max_sum
end

def max_sub_array_2(nums)
  # prev_max_sum = 0
  # curr_index = 0
  # while curr_index < nums.length
  #   curr_max_sum = [prev_max_sum + nums[curr_index], nums[curr_index]].max
  #   prev_max_sum = curr_max_sum if curr_max_sum > prev_max_sum
  #
  #   curr_index += 1
  # end
  # prev_max_sum
end

def max_sub_array_3(nums)
  min_num = nums.min
  max_sum = 0
  curr_sum = min_num
  nums.each do |num|
    curr_sum = curr_sum + num
    max_sum = curr_sum if curr_sum > max_sum
    curr_sum = min_num if curr_sum < 0
  end
  max_sum
end

def max_sub_array(nums)
  curr_subarray = nums[0]
  max_subarray = curr_subarray

  index = 1
  while index < nums.length
    num = nums[index]
    curr_subarray = [curr_subarray + num, num].max
    max_subarray = [max_subarray, curr_subarray].max
    index += 1
  end

  max_subarray
end
