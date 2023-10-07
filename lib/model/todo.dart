class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '02', todoText: "Read a Chapter of a Book", isDone: false),
      ToDo(id: '03', todoText: "Prepare Healthy Breakfast", isDone: true),
      ToDo(id: '04', todoText: "Complete Work Project", isDone: false),
      ToDo(id: '05', todoText: "Practice Meditation", isDone: false),
      ToDo(id: '06', todoText: "Write in Journal", isDone: false)
    ];
  }


}