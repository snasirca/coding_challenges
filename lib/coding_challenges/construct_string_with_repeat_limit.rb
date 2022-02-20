def repeat_limited_string(s, repeat_limit)
  lookup_table = {}
  s.each_char do |char|
    if lookup_table.key?(char)
      lookup_table[char] += 1
    else
      lookup_table[char] = 1
    end
  end

  chars = lookup_table.keys.sort.reverse
  result = []

  while chars.length > 0
    if result.last && result.last[-1] == chars[0]
      if chars.length > 1
        result << chars[1]
        lookup_table[chars[1]] -= 1
        chars.delete_at(1) if lookup_table[chars[1]] == 0
      else
        break
      end
    else
      repetition = [lookup_table[chars[0]], repeat_limit].min
      result << chars[0] * repetition
      lookup_table[chars[0]] -= repetition
      chars.delete_at(0) if lookup_table[chars[0]] == 0
    end
  end

  result.join
end
