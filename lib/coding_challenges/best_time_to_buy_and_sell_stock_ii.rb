def max_profit(prices)
  last_day_index = prices.length - 1
  largest_index = last_day_index
  smallest_index = last_day_index
  max_profit = 0
  index = last_day_index
  while index >= 0
    curr_price = prices[index]

    if curr_price > prices[smallest_index]
      largest_index = index
      smallest_index = index
    elsif curr_price < prices[smallest_index]
      max_profit += prices[largest_index] - curr_price
      if largest_index != smallest_index
        max_profit -= prices[largest_index] - prices[smallest_index]
      end
      smallest_index = index
    end

    index -= 1
  end
  max_profit
end
