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

      while left < right
        version_to_check = left + ((right - left) / 2)

        if is_bad_version(version_to_check)
          right = version_to_check
        else
          left = version_to_check + 1
        end
      end

      left
    end
  end
end
