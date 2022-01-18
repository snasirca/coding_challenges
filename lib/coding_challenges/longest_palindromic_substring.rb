module CodingChallenges
  class LongestPalindromicSubstring
    def longest_palindrome(str)
      start = 0
      stop = 0
      i = 0
      while i < str.length
        single_centre_length = expand_around_centre(str, i, i)
        double_centre_length = expand_around_centre(str, i, i + 1)
        max_length = [single_centre_length, double_centre_length].max
        if max_length > stop - start + 1
          start = i - (max_length - 1) / 2
          stop = i + max_length / 2
        end

        i += 1
      end
      str[start..stop]
    end

    def expand_around_centre(str, i, j)
      left = i
      right = j
      while left >= 0 && right < str.length && str[left] == str[right]
        left -= 1
        right += 1
      end
      right - left - 1
    end

    # --- Suboptimal solution below

    def longest_palindrome_tle(str)
      return str if str.length == 1
      max = [0, 0]
      i = 0
      while i < str.length
        j = i + (max[1] - max[0]) + 1
        while j < str.length
          if j - i > max[1] - max[0] && is_palindrome(str, i, j)
            max = [i, j]
          end
          j += 1
        end
        i += 1
      end
      str[max[0]..max[1]]
    end

    def is_palindrome(str, left_index, right_index)
      while left_index < right_index
        left_char = str[left_index]
        right_char = str[right_index]

        left_index += 1
        right_index -= 1

        return false if left_char != right_char
      end
      true
    end
  end
end
