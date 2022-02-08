def merge(intervals)
  intervals.sort_by! { |interval| interval[0] }
  i = 0
  j = 1
  while j < intervals.length
    if intervals[i][1] >= intervals[j][0] && intervals[i][1] <= intervals[j][1]
      intervals[i][1] = intervals[j][1]
      intervals[j][0] = -1
      j += 1
    elsif intervals[i][1] >= intervals[j][0] && intervals[i][1] >= intervals[j][1]
      intervals[j][0] = -1
      j += 1
    else
      i = j
      j = i + 1
    end
  end
  intervals.select { |interval| interval[0] >= 0 }
end
