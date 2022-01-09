module CodingChallenges
  class PlusOne
    def plus_one(nums)
      interpreted_integer = 0
      nums.reverse!.each_with_index do |num, index|
        interpreted_integer += num * 10**index
      end
      plus_one_integer = interpreted_integer + 1
      plus_one_integer.to_s.each_char.map(&:to_i)
    end
  end
end
