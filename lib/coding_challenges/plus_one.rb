def plus_one_1(nums)
  interpreted_integer = 0
  max_magnitude = nums.length - 1
  nums.each_with_index do |num, index|
    interpreted_integer += num * 10 ** (max_magnitude - index)
  end
  plus_one_integer = interpreted_integer + 1
  plus_one_integer.to_s.each_char.map(&:to_i)
end

def plus_one_2(nums)
  if nums.last == 9
    interpreted_integer = 0
    max_magnitude = nums.length - 1
    nums.each_with_index do |num, index|
      interpreted_integer += num * 10 ** (max_magnitude - index)
    end
    plus_one_integer = interpreted_integer + 1
    plus_one_integer.to_s.each_char.map(&:to_i)
  else
    nums[nums.length - 1] += 1
    nums
  end
end

def plus_one(nums)
  num_digits = nums.length
  last_num_index = num_digits - 1

  (0..last_num_index).each do |index|
    backward_index = last_num_index - index
    if nums[backward_index] == 9
      nums[backward_index] = 0
    else
      nums[backward_index] += 1
      return nums
    end
  end

  [1] + nums
end
