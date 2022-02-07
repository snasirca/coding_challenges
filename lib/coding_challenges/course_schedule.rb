require "algorithms"

include Containers

def can_finish(num_courses, prereqs)
  graph = {}
  checked = Set.new
  prereqs.each do |prereq|
    graph.key?(prereq[0]) ? graph[prereq[0]] << prereq[1] : graph[prereq[0]] = [prereq[1]]
  end

  graph.keys.each do |a|
    return false unless dfs(graph, a, checked)
  end

  true
end

def dfs(graph, a, checked, visited = Stack.new)
  return false if visited.include?(a)
  return true unless graph.key?(a)
  return true if checked.include?(a)
  visited.push(a)
  graph[a].each do |b|
    return false unless dfs(graph, b, checked, visited)
  end
  visited.pop
  checked << a
  true
end
