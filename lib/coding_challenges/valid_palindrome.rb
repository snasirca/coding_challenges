def is_palindrome(s)
  left_index = 0
  right_index = s.length - 1
  while left_index < right_index
    left_char = s[left_index].downcase
    right_char = s[right_index].downcase

    if is_alphanumeric(left_char) && is_alphanumeric(right_char)
      left_index += 1
      right_index -= 1
      return false if left_char != right_char
    else
      unless is_alphanumeric(left_char)
        left_index += 1
      end
      unless is_alphanumeric(right_char)
        right_index -= 1
      end
    end
  end
  true
end

def is_alphanumeric(char)
  char_as_byte = char.bytes[0]
  char_as_byte.between?(48, 57) || char_as_byte.between?(97, 122)
end
