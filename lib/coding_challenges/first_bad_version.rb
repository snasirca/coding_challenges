module CodingChallenges
  class FirstBadVersion
    attr_accessor :bad

    def is_bad_version(version)
      puts "isBadVersion(#{version}): #{version >= bad}"
      version >= bad
    end

    def first_bad_version(n)
      left = 1
      right = n

      return left if is_bad_version(left)

      while left != right && left + 1 != right
        version_to_check = (left + right) / 2

        if is_bad_version(version_to_check)
          right = version_to_check
        else
          left = version_to_check
        end
      end

      right
    end
  end
end
