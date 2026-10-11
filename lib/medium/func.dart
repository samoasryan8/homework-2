Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(const Duration(milliseconds: 100));
    return value;
  } else {
    throw Exception("Arjeq@ petq e drakan lini");
  }
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}