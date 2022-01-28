require "coding_challenges/best_time_to_buy_and_sell_stock_ii"

RSpec.describe "Solution" do
  it "1" do
    nums = [7, 1, 5, 3, 6, 4]

    result = max_profit(nums)

    expect(result).to eq(7)
  end

  it "2" do
    nums = [1, 2, 3, 4, 5]

    result = max_profit(nums)

    expect(result).to eq(4)
  end

  it "3" do
    nums = [7, 6, 4, 3, 1]

    result = max_profit(nums)

    expect(result).to eq(0)
  end

  it "4" do
    nums = [3, 6, 4]

    result = max_profit(nums)

    expect(result).to eq(3)
  end

  it "5" do
    nums = [6, 4]

    result = max_profit(nums)

    expect(result).to eq(0)
  end

  it "6" do
    nums = [4]

    result = max_profit(nums)

    expect(result).to eq(0)
  end

  it "7" do
    nums = [1, 2, 3, 4]

    result = max_profit(nums)

    expect(result).to eq(3)
  end
end
