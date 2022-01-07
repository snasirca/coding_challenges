require "coding_challenges/remove_duplicates_from_sorted_array"

RSpec.describe CodingChallenges::RemoveDuplicatesFromSortedArray do
  subject { CodingChallenges::RemoveDuplicatesFromSortedArray.new }

  it "handles empty arrays" do
    initial = []
    expected = []

    k = subject.remove_duplicates(initial)

    expect(k).to eq(0)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with a single element" do
    initial = [1]
    expected = [1]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(1)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with two elements that are unique" do
    initial = [1,2]
    expected = [1,2]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(2)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with two elements that are duplicates" do
    initial = [1,1]
    expected = [1]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(1)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with three elements that are unique" do
    initial = [1,2,3]
    expected = [1,2,3]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(3)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with three elements that are duplicates" do
    initial = [1,1,1]
    expected = [1]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(1)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles arrays with three elements that have only two duplicates" do
    initial = [1,1,2]
    expected = [1,2]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(2)
    expect(initial.first(k)).to eq(expected)
  end

  it "handles a large array with unique and duplicate elements" do
    initial = [1,1,2,3,3,4]
    expected = [1,2,3,4]

    k = subject.remove_duplicates(initial)

    expect(k).to eq(4)
    expect(initial.first(k)).to eq(expected)
  end
end
