module CodingChallenges
  class BestTimeToBuyAndSellStock
    def max_profit_brute(prices)
      buy_sell_plans = [0]
      prices.each_with_index do |buying_price, buying_day_index|
        prices[buying_day_index + 1..].each do |selling_price, _selling_day_index|
          buy_sell_plans << selling_price - buying_price
        end
      end
      buy_sell_plans.max
    end

    def max_profit_brute2(prices)
      prices_with_days = []
      max_profit_seen = 0
      prices.each_with_index { |price, day_index| prices_with_days << [price, day_index + 1] }
      prices_with_days.sort_by! { |price_with_day_index| price_with_day_index[0] }

      prices_with_days.each_with_index do |price_with_day, current_day_index|
        buying_day = price_with_day[1]
        buying_price = price_with_day[0]

        backwards_index = prices_with_days.length - 1
        while backwards_index > current_day_index
          potential_future_day = prices_with_days[backwards_index]

          if buying_day < potential_future_day[1]
            selling_day = potential_future_day
            selling_price = selling_day[0]

            current_profit = selling_price - buying_price

            max_profit_seen = current_profit if current_profit > max_profit_seen

            break
          end

          backwards_index -= 1
        end
      end
      max_profit_seen
    end

    def max_profit_brute3(prices)
      max_profit_seen = 0

      prices.each_with_index do |curr_day_price, curr_day_index|
        next_day = curr_day_index + 1
        last_day = -1
        selling_opportunities = prices[next_day..last_day]
          .filter { |selling_opportunity| selling_opportunity > curr_day_price }
        if selling_opportunities.any?
          max_possible_selling_price = selling_opportunities.max

          profit = max_possible_selling_price - curr_day_price
          max_profit_seen = profit if profit > max_profit_seen
        end
      end

      max_profit_seen
    end

    PriceWithDay = Struct.new(:price, :day)

    def max_profit_brute4(prices)
      max_profit_seen = 0
      latest_max_profit_seen = 0

      prices_ordered = prices
        .each_with_index
        .map { |price, day_index| PriceWithDay.new(price, day_index + 1) }
        .sort_by { |price_with_day| price_with_day.price }

      buying_index = 0
      while buying_index < prices_ordered.length
        if latest_max_profit_seen > max_profit_seen
          max_profit_seen = latest_max_profit_seen
        elsif latest_max_profit_seen < max_profit_seen
          break
        end

        buying_price_with_day = prices_ordered[buying_index]
        buying_price = buying_price_with_day.price
        buying_day = buying_price_with_day.day

        selling_index = prices_ordered.length - 1
        while selling_index > buying_index
          selling_price_with_day = prices_ordered[selling_index]
          selling_price = selling_price_with_day.price
          selling_day = selling_price_with_day.day

          if selling_day > buying_day && selling_price > buying_price && selling_price - buying_price > max_profit_seen
            latest_max_profit_seen = selling_price - buying_price
            break
          end

          selling_index -= 1
        end

        buying_index += 1
      end

      max_profit_seen
    end

    def max_profit(prices)
      minprice = 10**4+1
      maxprofit = 0
      prices.each do |price|
        if price < minprice
          minprice = price
        elsif price - minprice > maxprofit
          maxprofit = price - minprice
        end
      end
      maxprofit
    end
  end
end
