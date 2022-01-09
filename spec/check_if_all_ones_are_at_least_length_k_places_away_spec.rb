require "coding_challenges/check_if_all_ones_are_at_least_length_k_places_away"

RSpec.describe CodingChallenges::CheckIfAllOnesAreAtLeastLengthKPlacesAway do
  subject { CodingChallenges::CheckIfAllOnesAreAtLeastLengthKPlacesAway.new }

  it "1" do
    nums = [1, 0, 0, 0, 1, 0, 0, 1]
    k = 2

    result = subject.k_length_apart(nums, k)

    expect(result).to eq(true)
  end

  it "2" do
    nums = [1, 0, 0, 1, 0, 1]
    k = 2

    result = subject.k_length_apart(nums, k)

    expect(result).to eq(false)
  end
end
