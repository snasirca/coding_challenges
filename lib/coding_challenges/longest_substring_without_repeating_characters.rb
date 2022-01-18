module CodingChallenges
  class LongestSubstringWithoutRepeatingCharacters
    def length_of_longest_substring(str)
      max = 0
      last_substr = ""
      i = 0
      while i < str.length
        curr_char = str[i]
        if last_substr.include?(curr_char)
          max = [max, last_substr.length].max
          match_position = last_substr.index(curr_char)
          last_substr = match_position < last_substr.length ?
            last_substr[(match_position + 1)..] :
            ""
        end
        last_substr << curr_char
        i += 1
      end
      max = [max, last_substr.length].max
      max
    end

    def length_of_longest_substring_fail(str)
      max = 0
      last_substr = ""
      last_substr_table = {}
      num_removed = 0
      i = 0
      while i < str.length
        curr_char = str[i]
        if last_substr_table.key?(curr_char)
          max = [max, last_substr.length].max
          match_position = last_substr_table[curr_char]
          to_truncate = last_substr[0..match_position]
          last_substr = match_position < last_substr.length ?
            last_substr[(match_position + 1)..] :
            ""
          to_truncate.each_char { |char| last_substr_table.delete(char) }
        end
        last_substr_table[curr_char] = last_substr.length
        last_substr << curr_char
        i += 1
      end
      max = [max, last_substr.length].max
      max
    end
  end
end
