require "coding_challenges/valid_palindrome"

RSpec.describe "Solution" do
  it "1" do
    s = "A man, a plan, a canal: Panama"

    result = is_palindrome(s)

    expect(result).to eq(true)
  end

  it "2" do
    s = "race a car"

    result = is_palindrome(s)

    expect(result).to eq(false)
  end

  it "3" do
    s = " "

    result = is_palindrome(s)

    expect(result).to eq(true)
  end

  it "4" do
    s = " a"

    result = is_palindrome(s)

    expect(result).to eq(true)
  end
end
