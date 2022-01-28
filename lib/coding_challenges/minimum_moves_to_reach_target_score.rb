def min_moves(target, max_doubles)
  result = target
  moves = 0
  doublings = 0

  while result != 1

    if doublings < max_doubles
      if result % 2 == 0
        doublings += 1
        result /= 2
        moves += 1
        next
      end
    else
      moves += result - 1
      result = 1
      next
    end

    result -= 1
    moves += 1
  end

  moves
end
