def first_uniq_char(s)
  lookup_table = {}
  s.each_char do |char|
    if lookup_table.key?(char)
      lookup_table[char] += 1
    else
      lookup_table[char] = 1
    end
  end
  s.each_char.each_with_index do |char, index|
    if lookup_table[char] == 1
      return index
    end
  end
  -1
end
