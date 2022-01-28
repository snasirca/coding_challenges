def rob(nums)
  profit = Array.new(nums.length)

  house = 0
  while house < nums.length
    profit[house] = [
      (profit[house - 2] || 0) + nums[house],
      (profit[house - 1] || 0)
    ].max

    house += 1
  end

  profit.last
end
