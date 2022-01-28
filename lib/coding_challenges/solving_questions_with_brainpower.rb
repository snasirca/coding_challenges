def most_points(questions)
  reverse_index = questions.length - 1
  lookup_table = Array.new(questions.length)
  while reverse_index >= 0
    curr_question = questions[reverse_index]
    curr_points = curr_question[0]
    curr_brainpower = curr_question[1]

    if curr_brainpower < questions.length - reverse_index - 1
      max_points = [
        curr_points + lookup_table[reverse_index + curr_brainpower + 1],
        lookup_table[reverse_index + 1]
      ].max
    else
      max_points = [
        curr_points,
        lookup_table[reverse_index + 1] ? lookup_table[reverse_index + 1] : 0
      ].max
    end
    lookup_table[reverse_index] = max_points

    reverse_index -= 1
  end
  lookup_table[0]
end
