module CodingChallenges
  class GroupAnagrams
    def group_anagrams(strs)
      groups = {}
      strs.each do |str|
        group_key = str.each_char.sort
        if groups.key?(group_key)
          groups[group_key] << str
        else
          groups[group_key] = [str]
        end
      end
      groups.values
    end

    def group_anagrams_tle(strs)
      l = strs.length
      return [] if l == 0
      return [strs] if l == 1
      midpoint = l / 2
      left_strs = strs[0..(midpoint - 1)]
      left_group = group_anagrams(left_strs)
      right_strs = strs[midpoint..]
      right_group = group_anagrams(right_strs)

      combined = []
      unmatched_left_groups = {}
      unmatched_right_groups = {}
      left_group.length.times do |i|
        curr_left_group = left_group[i]
        curr_left_group_first = curr_left_group[0]
        right_group.length.times do |j|
          curr_right_group = right_group[j]
          curr_right_group_first = curr_right_group[0]
          if is_anagram(curr_left_group_first, curr_right_group_first)
            combined << curr_left_group + curr_right_group
            unmatched_left_groups[i] = false
            unmatched_right_groups[j] = false
          else
            unmatched_left_groups[i] = true unless unmatched_left_groups[i] == false
            unmatched_right_groups[j] = true unless unmatched_right_groups[j] == false
          end
        end
      end
      left_group.length.times do |i|
        combined << left_group[i] if unmatched_left_groups[i]
      end
      right_group.length.times do |j|
        combined << right_group[j] if unmatched_right_groups[j]
      end

      combined
    end

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
