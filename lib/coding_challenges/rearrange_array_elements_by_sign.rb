def rearrange_array(nums)
  holder = Array.new(nums.length)
  positives_seen = 0
  negatives_seen = 0
  nums.each do |num|
    if num > 0
      holder[positives_seen * 2] = num
      positives_seen += 1
    elsif num < 0
      holder[(negatives_seen * 2) + 1] = num
      negatives_seen += 1
    end
  end
  holder.each_with_index { |num, index| nums[index] = num }
  nums
end
