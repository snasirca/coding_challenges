require "coding_challenges/count_and_say"

RSpec.describe "Solution" do
  it "1" do
    n = 1

    result = count_and_say(n)

    expect(result).to eq("1")
  end

  it "2" do
    n = 4

    result = count_and_say(n)

    expect(result).to eq("1211")
  end

  it "3" do
    n = 5

    result = count_and_say(n)

    expect(result).to eq("111221")
  end

  it "4" do
    n = 6

    result = count_and_say(n)

    expect(result).to eq("312211")
  end
end
