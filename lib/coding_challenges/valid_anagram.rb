module CodingChallenges
  class ValidAnagram
    def is_anagram(s, t)
      return is_anagram(t, s) if t.length < s.length

      lookup_table = {}
      s.each_char do |char|
        lookup_table[char] = lookup_table.key?(char) ? lookup_table[char] + 1 : 1
      end
      t.each_char do |char|
        return false unless lookup_table.key?(char)
        return false if lookup_table[char] == 0
        lookup_table[char] -= 1
      end

      true
    end
  end
end
