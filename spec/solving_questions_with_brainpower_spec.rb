require "coding_challenges/solving_questions_with_brainpower"

RSpec.describe "Solution" do
  it "1" do
    questions = [[2, 5]]

    result = most_points(questions)

    expect(result).to eq(2)
  end

  it "2" do
    questions = [[4, 4], [2, 5]]

    result = most_points(questions)

    expect(result).to eq(4)
  end

  it "3" do
    questions = [[3, 2], [4, 3], [4, 4], [2, 5]]

    result = most_points(questions)

    expect(result).to eq(5)
  end

  it "4" do
    questions = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]

    result = most_points(questions)

    expect(result).to eq(7)
  end

  it "5" do
    questions = [[1, 1], [1, 1]]

    result = most_points(questions)

    expect(result).to eq(1)
  end

  it "6" do
    questions = [[1, 1], [1, 1], [1, 1]]

    result = most_points(questions)

    expect(result).to eq(2)
  end

  it "7" do
    questions = [[12, 46], [78, 19], [63, 15], [79, 62], [13, 10]]

    result = most_points(questions)

    expect(result).to eq(79)
  end
end
