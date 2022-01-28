require "coding_challenges/generate_parentheses"

RSpec.describe "Solution" do
  it "4" do
    n = 4

    result = generate_parenthesis(n)

    expect(result).to contain_exactly("(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()")
  end
  it "3" do
    n = 3

    result = generate_parenthesis(n)

    expect(result).to contain_exactly("((()))", "(()())", "(())()", "()(())", "()()()")
  end
  it "2" do
    n = 2

    result = generate_parenthesis(n)

    expect(result).to contain_exactly("()()", "(())")
  end
  it "1" do
    n = 1

    result = generate_parenthesis(n)

    expect(result).to contain_exactly("()")
  end
end
