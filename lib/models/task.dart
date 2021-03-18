class Task {
  final String name;
  bool isDone;
  final int count;
  Task({this.name, this.isDone = false, this.count});

  void toggleDone() {
    isDone = !isDone;
  }
}
