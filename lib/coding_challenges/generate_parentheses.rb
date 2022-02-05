def generate_parenthesis(n)
  paren_stack = []
  result = []

  backtrack = ->(n, open, closed) do
    if closed == n
      result << paren_stack.join
      return
    end
    if open < n
      paren_stack.append("(")
      backtrack.call(n, open + 1, closed)
      paren_stack.pop
    end
    if closed < open
      paren_stack.append(")")
      backtrack.call(n, open, closed + 1)
      paren_stack.pop
    end
  end

  backtrack.call(n, 0, 0)

  result
end
