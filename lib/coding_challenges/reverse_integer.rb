def reverse(x)
  max_positive_int = 2 ** 31 - 1
  max_negative_int = -2 ** 31
  rev = 0
  while x != 0
    pop = x.remainder(10)

    return 0 if rev > (max_positive_int / 10) ||
      rev == (max_positive_int / 10) && pop > 7
    return 0 if rev < (max_negative_int / 10.0).truncate ||
      rev == (max_negative_int / 10.0).truncate && pop < -8

    x = (x / 10.0).truncate
    rev = rev * 10 + pop
  end
  rev
end
