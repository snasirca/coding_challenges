require "coding_challenges/divide_a_string_into_groups_of_size_k"

RSpec.describe "Solution" do
  it "1" do
    s = "abcdefghi"
    k = 3
    fill = "x"

    result = divide_string(s, k, fill)

    expect(result).to eq(["abc", "def", "ghi"])
  end

  it "2" do
    s = "abcdefghij"
    k = 3
    fill = "x"

    result = divide_string(s, k, fill)

    expect(result).to eq(["abc", "def", "ghi", "jxx"])
  end

  it "3" do
    s = "ab"
    k = 1
    fill = "x"

    result = divide_string(s, k, fill)

    expect(result).to eq(["a", "b"])
  end

  it "4" do
    s = "a"
    k = 1
    fill = "x"

    result = divide_string(s, k, fill)

    expect(result).to eq(["a"])
  end

  it "5" do
    s = "a"
    k = 3
    fill = "x"

    result = divide_string(s, k, fill)

    expect(result).to eq(["axx"])
  end

  it "6" do
    s = "ctoyjrwtngqwt"
    k = 8
    fill = "n"

    result = divide_string(s, k, fill)

    expect(result).to eq(["ctoyjrwt", "ngqwtnnn"])
  end
end
