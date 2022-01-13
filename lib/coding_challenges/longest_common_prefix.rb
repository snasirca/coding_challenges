module CodingChallenges
  class LongestCommonPrefix
    def longest_common_prefix(strs)
      i = -1
      common_matching = true
      while common_matching && i < strs[0].length
        i += 1
        m = 0
        while m < strs.length - 1
          if strs[m][i] != strs[m + 1][i]
            common_matching = false
            break
          end
          m += 1
        end
      end
      i == 0 ? "" : strs[0][0..(i - 1)]
    end
  end
end
