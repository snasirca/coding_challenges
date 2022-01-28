require "coding_challenges/kth_missing_positive_number"

RSpec.describe "Solution" do
  it "5" do
    arr = [1,100]
    k = 50

    result = find_kth_positive(arr, k)

    expect(result).to eq(51)
  end
  it "4" do
    arr = [1]
    k = 100

    result = find_kth_positive(arr, k)

    expect(result).to eq(101)
  end
  it "3" do
    arr = [1,3,7]
    k = 2

    result = find_kth_positive(arr, k)

    expect(result).to eq(4)
  end
  it "2" do
    arr = [1,2,3,4]
    k = 2

    result = find_kth_positive(arr, k)

    expect(result).to eq(6)
  end
  it "1" do
    arr = [2,3,4,7,11]
    k = 5

    result = find_kth_positive(arr, k)

    expect(result).to eq(9)
  end
end
