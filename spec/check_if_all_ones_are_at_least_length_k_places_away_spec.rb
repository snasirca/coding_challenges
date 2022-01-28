require "coding_challenges/check_if_all_ones_are_at_least_length_k_places_away"

RSpec.describe "Solution" do
  it "1" do
    nums = [1, 0, 0, 0, 1, 0, 0, 1]
    k = 2

    result = k_length_apart(nums, k)

    expect(result).to eq(true)
  end

  it "2" do
    nums = [1, 0, 0, 1, 0, 1]
    k = 2

    result = k_length_apart(nums, k)

    expect(result).to eq(false)
  end
end
