require "coding_challenges/construct_string_with_repeat_limit"

RSpec.describe "Solution" do
  it "1" do
    s = "cczazcc"
    repeat_limit = 3

    result = repeat_limited_string(s, repeat_limit)

    expect(result).to eq("zzcccac")
  end

  it "2" do
    s = "aababab"
    repeat_limit = 2

    result = repeat_limited_string(s, repeat_limit)

    expect(result).to eq("bbabaa")
  end
end
