RSpec.describe CodingChallenges::RemoveDuplicatesFromSortedArray do
  subject { CodingChallenges::RemoveDuplicatesFromSortedArray }

  it "has a version number" do
    initial = [1,1,2]
    expected = [1,2]

    actual = subject.execute(initial)

    expect(actual.first(expected.length)).to eq(expected)
  end
end
