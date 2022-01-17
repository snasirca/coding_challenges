module CodingChallenges
  class ClimbStairs
    def climb_stairs(n)
      ways_at_step = Array.new(n)
      ways_at_step[1] = 1
      ways_at_step[2] = 2

      step = 3
      while step <= n
        ways_at_step[step] = ways_at_step[step - 1] + ways_at_step[step - 2]

        step += 1
      end

      ways_at_step[n]
    end
  end
end
