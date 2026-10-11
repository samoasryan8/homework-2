Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return "Task $name katarvec";
}

Future<List<String>> runTasks() async {
  return await Future.wait([
    runTask('A', 100),
    runTask('B', 50),
    runTask('C', 150),
  ]);
}