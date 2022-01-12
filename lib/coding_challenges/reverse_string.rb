module CodingChallenges
  class ReverseString
    def reverse_string_1(s)
      index = 0
      while index < ((s.length - 1) / 2.0).ceil
        forward_index = index
        backward_index = s.length - 1 - index

        temp = s[forward_index]
        s[forward_index] = s[backward_index]
        s[backward_index] = temp

        index += 1
      end
      s
    end

    def reverse_string(s)
      left_index = 0
      right_index = s.length - 1
      while left_index < right_index
        temp = s[left_index]
        s[left_index] = s[right_index]
        s[right_index] = temp

        left_index += 1
        right_index -= 1
      end
      s
    end
  end
end
