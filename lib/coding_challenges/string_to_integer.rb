module CodingChallenges
  class StringToInteger
    def my_atoi(s)
      max_positive_int = 2 ** 31 - 1
      max_negative_int = -2 ** 31

      starting_digit_index = 0
      while starting_digit_index < s.length
        char = s[starting_digit_index]
        break if is_digit(char)
        return 0 unless char == " " ||
          (
            (char == "-" || char == "+") &&
            starting_digit_index < s.length - 1 && is_digit(s[starting_digit_index + 1])
          )
        starting_digit_index += 1
      end
      negative_factor = starting_digit_index > 0 &&
        s[starting_digit_index - 1] == "-" ? -1 : 1
      index = starting_digit_index
      x = 0
      while index < s.length
        digit_char = s[index]
        break unless is_digit(digit_char)
        digit = negative_factor * (digit_char.bytes[0] - 48)
        return max_positive_int if x > (max_positive_int / 10) ||
          x == (max_positive_int / 10) && digit > 7
        return max_negative_int if x < (max_negative_int / 10.0).truncate ||
          x == (max_negative_int / 10.0).truncate && digit < -8
        x = x * 10 + digit
        index += 1
      end
      x
    end

    def is_digit(char)
      char.bytes[0].between?(48, 57)
    end
  end
end
