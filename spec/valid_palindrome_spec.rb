require "coding_challenges/valid_palindrome"

RSpec.describe CodingChallenges::ValidPalindrome do
  subject { CodingChallenges::ValidPalindrome.new }

  it "1" do
    s = "A man, a plan, a canal: Panama"

    result = subject.is_palindrome(s)

    expect(result).to eq(true)
  end

  it "2" do
    s = "race a car"

    result = subject.is_palindrome(s)

    expect(result).to eq(false)
  end

  it "3" do
    s = " "

    result = subject.is_palindrome(s)

    expect(result).to eq(true)
  end

  it "4" do
    s = " a"

    result = subject.is_palindrome(s)

    expect(result).to eq(true)
  end
end
