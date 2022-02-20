def count_even(num)
  count = 0
  (1..num).each do |int|
    count += 1 if digit_sum_even?(int)
  end
  count
end

def digit_sum_even?(int)
  sum = 0
  while int / 10 != 0
    right_digit = int % 10
    sum += right_digit
    int /= 10
  end
  sum += int
  sum > 0 && sum % 2 == 0
end
