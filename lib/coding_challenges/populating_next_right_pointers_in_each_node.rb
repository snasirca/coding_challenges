module CodingChallenges
  class PopulatingNextRightPointersInEachNode
    def connect(root)
      return nil unless root
      queue = [root, nil]

      while queue.length > 0
        curr = queue.shift
        upcoming = queue[0]
        if curr
          queue.push(curr.left) if curr.left
          queue.push(curr.right) if curr.right
          curr.next = upcoming
        else
          queue.push(nil) if queue.length > 0
        end
      end

      root
    end
  end
end
