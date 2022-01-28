def generate_parenthesis(n)
  paren_stack = []
  result = []
  backtrack(n, paren_stack, result, 0, 0)
  result
end

def backtrack(n, paren_stack, result, open, closed)
  if closed == n
    result << paren_stack.join
    return
  end
  if open < n
    paren_stack.append("(")
    backtrack(n, paren_stack, result, open + 1, closed)
    paren_stack.pop
  end
  if closed < open
    paren_stack.append(")")
    backtrack(n, paren_stack, result, open, closed + 1)
    paren_stack.pop
  end
end
