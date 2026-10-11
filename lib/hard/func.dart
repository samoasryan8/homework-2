List<int> findPair(List<int> numbers, int target) {
  Map<int, int> visited = {};

  for (int i = 0; i < numbers.length; i++) {
    int complement = target - numbers[i];
    if (visited.containsKey(complement)) {
      return [visited[complement]!, i];
    }
    visited[numbers[i]] = i;
  }

  return [];
}