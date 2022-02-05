def subsets(nums)
  results = [[]]
  choice = []

  backtrack = ->(n, i = 0) do
    if choice.length == n
      results << choice.dup
      return
    end

    j = i
    while j < nums.length
      choice.push(nums[j])
      backtrack.call(n, j + 1)
      choice.pop
      j += 1
    end
  end

  n = 1
  while n <= nums.length
    backtrack.call(n)
    n += 1
  end

  results
end
