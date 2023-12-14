class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}

void main() {
  // 예시: JSON을 객체로 변환 (fromJson)
  Map<String, dynamic> jsonMap = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false,
  };

  Todo todo = Todo.fromJson(jsonMap);
  print(todo.userId); // 출력: 1
  print(todo.title); // 출력: delectus aut autem

  // 예시: 객체를 JSON으로 변환 (toJson)
  Map<String, dynamic> todoJson = todo.toJson();
  print(todoJson); // 출력: {userId: 1, id: 1, title: delectus aut autem, completed: false}
}