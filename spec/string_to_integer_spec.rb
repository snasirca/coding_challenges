require "coding_challenges/string_to_integer"

RSpec.describe CodingChallenges::StringToInteger do
  subject { CodingChallenges::StringToInteger.new }

  it "1" do
    s = "42"

    result = subject.my_atoi(s)

    expect(result).to eq(42)
  end

  it "2" do
    s = "    -42"

    result = subject.my_atoi(s)

    expect(result).to eq(-42)
  end

  it "3" do
    s = "4193 with words"

    result = subject.my_atoi(s)

    expect(result).to eq(4193)
  end

  it "4 - about to overflow positive" do
    s = "2147483648"

    result = subject.my_atoi(s)

    expect(result).to eq(2147483647)
  end

  it "5 - not overflow positive direction" do
    s = "2147483647"

    result = subject.my_atoi(s)

    expect(result).to eq(2147483647)
  end

  it "6 - about to overflow negative" do
    s = "-2147483649"

    result = subject.my_atoi(s)

    expect(result).to eq(-2147483648)
  end

  it "7 - not overflow negative direction" do
    s = "-2147483648"

    result = subject.my_atoi(s)

    expect(result).to eq(-2147483648)
  end

  it "8" do
    s = ""

    result = subject.my_atoi(s)

    expect(result).to eq(0)
  end

  it "9" do
    s = "words and 987"

    result = subject.my_atoi(s)

    expect(result).to eq(0)
  end

  it "10" do
    s = "+987"

    result = subject.my_atoi(s)

    expect(result).to eq(987)
  end

  it "11" do
    s = "   +987"

    result = subject.my_atoi(s)

    expect(result).to eq(987)
  end

  it "12" do
    s = "+-12"

    result = subject.my_atoi(s)

    expect(result).to eq(0)
  end

  it "12" do
    s = "-+12"

    result = subject.my_atoi(s)

    expect(result).to eq(0)
  end
end
