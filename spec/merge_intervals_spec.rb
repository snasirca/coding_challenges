require "coding_challenges/merge_intervals"

RSpec.describe "Solution" do
  it "6" do
    intervals = [[1, 3], [0, 2], [2, 3], [4, 6], [4, 5], [5, 5], [0, 2], [3, 3]]

    result = merge(intervals)

    expect(result).to eq([[0, 3], [4, 6]])
  end
  it "5" do
    intervals = [[1, 4], [2, 3]]

    result = merge(intervals)

    expect(result).to eq([[1, 4]])
  end
  it "4" do
    intervals = [[1, 4], [0, 4]]

    result = merge(intervals)

    expect(result).to eq([[0, 4]])
  end
  it "3" do
    intervals = [[1, 4]]

    result = merge(intervals)

    expect(result).to eq([[1, 4]])
  end
  it "2" do
    intervals = [[1, 4], [4, 5]]

    result = merge(intervals)

    expect(result).to eq([[1, 5]])
  end
  it "1" do
    intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]

    result = merge(intervals)

    expect(result).to eq([[1, 6], [8, 10], [15, 18]])
  end
end
