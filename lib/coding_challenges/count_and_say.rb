def count_and_say(n)
  result = "1"
  i = 1
  while i < n

    j = 0
    specific_n_result = ""
    while j < result.length

      curr_num = result[j]
      group_count = 1

      k = j + 1
      while k < result.length
        if result[k] == curr_num
          group_count += 1
          k += 1
        else
          break
        end
      end
      specific_n_result += "#{group_count}#{curr_num}"

      j += group_count
    end

    result = specific_n_result

    i += 1
  end
  result
end
