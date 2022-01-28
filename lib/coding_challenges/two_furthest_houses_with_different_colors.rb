def max_distance_1_fail(colors)
  earliest_house_index = 0
  latest_house_index = earliest_house_index
  max_seen = (latest_house_index - earliest_house_index).abs

  curr_house_index = 1
  while curr_house_index < colors.length
    if colors[earliest_house_index] != colors[curr_house_index]
      if (earliest_house_index - curr_house_index).abs >
        (earliest_house_index - latest_house_index).abs
        max_seen = (earliest_house_index - curr_house_index).abs
        latest_house_index = curr_house_index
      end
    elsif colors[latest_house_index] != colors[curr_house_index]
      if (latest_house_index - curr_house_index).abs >
        (earliest_house_index - latest_house_index).abs
        max_seen = (latest_house_index - curr_house_index).abs
        earliest_house_index = latest_house_index
        latest_house_index = curr_house_index
      end
    end
    curr_house_index += 1
  end

  max_seen
end

def max_distance(colors)
  first_house_index = 0
  last_house_index = colors.length - 1
  max_diff_seen = 0

  first_house_color = colors[first_house_index]
  last_house_color = colors[last_house_index]
  colors.each_with_index do |color, index|
    if first_house_color != color
      max_diff_seen = [max_diff_seen, (first_house_index - index).abs].max
    end
    if last_house_color != color
      max_diff_seen = [max_diff_seen, (last_house_index - index).abs].max
    end
  end

  max_diff_seen
end
