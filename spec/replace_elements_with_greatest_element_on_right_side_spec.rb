require "coding_challenges/replace_elements_with_greatest_element_on_right_side"

RSpec.describe CodingChallenges::ReplaceElementsWithGreatestElementOnRightSide do
  subject { CodingChallenges::ReplaceElementsWithGreatestElementOnRightSide.new }

  it "1" do
    arr = [17,18,5,4,6,1]

    result = subject.replace_elements(arr)

    expect(result).to eq([18,6,6,6,1,-1])
  end

  it "2" do
    arr = [400]

    result = subject.replace_elements(arr)

    expect(result).to eq([-1])
  end
end
