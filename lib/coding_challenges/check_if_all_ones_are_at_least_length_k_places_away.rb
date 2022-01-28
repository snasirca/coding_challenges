def k_length_apart(nums, k)
  last_one_seen_index = -1
  nums.each_with_index do |num, index|
    next unless num == 1
    if last_one_seen_index != -1
      distance = index - last_one_seen_index - 1
      return false if distance < k
    end
    last_one_seen_index = index
  end
  true
end
