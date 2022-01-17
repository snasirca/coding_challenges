require "coding_challenges/fizz_buzz"

RSpec.describe CodingChallenges::FizzBuzz do
  subject { CodingChallenges::FizzBuzz.new }

  it "1" do
    n = 3

    result = subject.fizz_buzz(n)

    expect(result).to eq(%w[1 2 Fizz])
  end

  it "2" do
    n = 5

    result = subject.fizz_buzz(n)

    expect(result).to eq(%w[1 2 Fizz 4 Buzz])
  end

  it "3" do
    n = 15

    result = subject.fizz_buzz(n)

    expect(result).to eq(%w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz])
  end
end
