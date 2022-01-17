module CodingChallenges
  class FizzBuzz
    def fizz_buzz(n)
      n
        .times
        .map do |i|
        index = i + 1
        if index % 3 == 0 && index % 5 == 0
          "FizzBuzz"
        elsif index % 3 == 0
          "Fizz"
        elsif index % 5 == 0
          "Buzz"
        else
          index.to_s
        end
      end
    end
  end
end
