Future<int> delayedValue(int value) async {
  await Future.delayed(const Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  int valA = await delayedValue(a);
  int valB = await delayedValue(b);
  return valA + valB;
}