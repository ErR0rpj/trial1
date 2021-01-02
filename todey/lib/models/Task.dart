List<Task> tasks = [
  Task(name: 'P', isDone: false),
];

class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }
}
