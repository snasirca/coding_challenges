def find_kth_positive(arr, k)
  i = -1
  j = 0
  while j < arr.length
    prev_num = i >= 0 ? arr[i] : 0
    curr_num = arr[j]

    delta = curr_num - prev_num - 1

    if delta < k
      k -= delta
    else
      return prev_num + k
    end

    i += 1
    j += 1
  end

  return curr_num + k
end
