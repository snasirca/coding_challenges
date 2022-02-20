def cout_pairs(nums, k)
  count = 0
  i = 0
  while i < nums.length - 1
    j = i + 1
    while j < nums.length
      if (nums[i] * nums[j]) % k == 0
        count += 1
      end
      j += 1
    end
    i += 1
  end
  count
end
