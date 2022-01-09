module CodingChallenges
  class PlusOne
    def plus_one(nums)
      interpreted_integer = 0
      max_magnitude = nums.length - 1
      nums.each_with_index do |num, index|
        interpreted_integer += num * 10**(max_magnitude - index)
      end
      plus_one_integer = interpreted_integer + 1
      plus_one_integer.to_s.each_char.map(&:to_i)
    end
  end
end
