def divide_string(s, k, fill)
  l = s.length
  indices = (l / k)
    .times
    .to_a
    .map { |x| x * k }

  result = []
  indices.each do |index|
    result << s[index, k]
  end
  if l % k != 0
    if indices.empty?
      result << s + fill * (k - (l % k))
    else
      result << s[(indices[-1] + k)..-1] + fill * (k - (l % k))
    end
  end
  result
end
