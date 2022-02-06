require "coding_challenges/word_search"

RSpec.describe "Solution" do
  it "1" do
    board = [
      %w[A B C E],
      %w[S F C S],
      %w[A D E E]
    ]
    word = "ABCCED"

    result = exist_(board, word)

    expect(result).to eq(true)
  end

  it "2" do
    board = [
      %w[A B C E],
      %w[S F C S],
      %w[A D E E]
    ]
    word = "SEE"

    result = exist_(board, word)

    expect(result).to eq(true)
  end

  it "3" do
    board = [
      %w[A B C E],
      %w[S F C S],
      %w[A D E E]
    ]
    word = "ABCB"

    result = exist_(board, word)

    expect(result).to eq(false)
  end

  it "4" do
    board = [
      %w[A]
    ]
    word = "A"

    result = exist_(board, word)

    expect(result).to eq(true)
  end

  it "5" do
    board = [
      %w[A B]
    ]
    word = "B"

    result = exist_(board, word)

    expect(result).to eq(true)
  end

  it "6" do
    board = [
      %w[A B],
      %w[C D]
    ]
    word = "DC"

    result = exist_(board, word)

    expect(result).to eq(true)
  end

  it "7" do
    board = [
      %w[A A A A A A],
      %w[A A A A A A],
      %w[A A A A A A],
      %w[A A A A A A],
      %w[A A A A A A],
      %w[A A A A A A]
    ]
    word = "AAAAAAAAAAAAAAB"

    result = exist_(board, word)

    expect(result).to eq(false)
  end
end
