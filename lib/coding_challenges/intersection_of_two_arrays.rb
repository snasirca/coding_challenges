def intersection(nums1, nums2)
  lookup_table = Array.new(1001, nil)
  nums1.each { |num| lookup_table[num] = true }
  intersection = []
  nums2.each do |num|
    if lookup_table[num] == true
      intersection << num
      lookup_table[num] = false
    end
  end
  intersection
end
