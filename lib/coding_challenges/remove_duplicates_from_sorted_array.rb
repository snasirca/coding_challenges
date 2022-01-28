def remove_duplicates(nums)
  unique_nums_tracker = 0

  (0..nums.length - 1).each do |index|
    if nums[index] != nums[index + 1]
      nums[unique_nums_tracker] = nums[index]
      unique_nums_tracker += 1
    end
  end

  unique_nums_tracker
end
