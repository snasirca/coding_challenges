module CodingChallenges
  class ReplaceElementsWithGreatestElementOnRightSide
    # This is actually a brute force solution
    def replace_elements(arr)
      max_seen = arr[0]
      arr.each_with_index.map do |element, index|
        if index == arr.length - 1
          -1
        else
            # If our currently element was the max, search for a new max since
            # it is about to be replaced
          if element == max_seen
            max_seen = arr[(index + 1)..-1].max
          end
          max_seen
        end
      end
    end
  end
end
