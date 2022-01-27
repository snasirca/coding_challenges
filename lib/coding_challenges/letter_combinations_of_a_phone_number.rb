module CodingChallenges
  class LetterCombinationsOfAPhoneNumber
    def letter_combinations(digits)
      return [] unless digits != ""

      mapping = {
        "2" => ["a", "b", "c"],
        "3" => ["d", "e", "f"],
        "4" => ["g", "h", "i"],
        "5" => ["j", "k", "l"],
        "6" => ["m", "n", "o"],
        "7" => ["p", "q", "r", "s"],
        "8" => ["t", "u", "v"],
        "9" => ["w", "x", "y", "z"]
      }

      result = mapping[digits[0]]

      return result unless digits[1..] != ""

      digits[1..].each_char do |digit|
        temp = []
        result.each do |combo|
          mapping[digit].each do |mapping_char|
            temp << combo + mapping_char
          end
        end
        result = temp
      end

      result
    end
  end
end
