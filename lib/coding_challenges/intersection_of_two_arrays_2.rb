module CodingChallenges
  class IntersectionOfTwoArrays2
    def intersect(nums1, nums2)
      if nums1.length > nums2.length
        return intersect(nums2, nums1)
      end
      lookup_table = Array.new(1001, 0)
      nums1.each { |num| lookup_table[num] += 1 }
      index = 0
      nums2.each do |num|
        if lookup_table[num] != 0
          nums2[index] = num
          index += 1
          lookup_table[num] -= 1
        end
      end
      nums2.take(index)
    end
  end
end
