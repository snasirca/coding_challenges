require "coding_challenges/letter_combinations_of_a_phone_number"

RSpec.describe CodingChallenges::LetterCombinationsOfAPhoneNumber do
  subject { CodingChallenges::LetterCombinationsOfAPhoneNumber.new }

  it "3" do
    digits = ""

    result = subject.letter_combinations(digits)

    expect(result).to be_empty
  end

  it "2" do
    digits = "2"

    result = subject.letter_combinations(digits)

    expect(result).to contain_exactly("a", "b", "c")
  end

  it "1" do
    digits = "23"

    result = subject.letter_combinations(digits)

    expect(result).to contain_exactly("ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf")
  end
end
