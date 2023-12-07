void main() {
  print(Student(name: '학생1', classRoom:  '강의실1', age:10,) == Student(name: '학생1', classRoom:  '강의실1', age:10));

  final p1 = Student(name: '학생1', classRoom:  '강의실1', age:10);

  final clone = Student( name: 'p1.name', classRoom: p1.classRoom, age: p1.age );

  print(p1 == clone);

  final p2 = p1.copyWith();
  print(p1 == p2);

  final p3 = p1.copyWith(name: 'b');
  print(p3);

  final p4 = p1.copyWith(age: 50);
  print(p4);

  final p5 = p1.copyWith(name: 'c', age: 90);
  print(p5);
}


// 클래스 학생 생성
class Student {
  String name;
  String classRoom;
  int age;

  // 생성자
  Student({
    required   this.name,
    required this.classRoom,
    required  this.age,
  });

  Student copyWith({
    String? name,
    String? classRoom,
    int? age,
  }) {
    return Student(
      name: name ?? this.name,
      classRoom: classRoom ?? this.classRoom,
      age: age ?? this.age,
    );
  }


  @override
  String toString() {
    return 'Student{classRoom: $classRoom}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Student && runtimeType == other.runtimeType &&
              classRoom == other.classRoom;

  @override
  int get hashCode => classRoom.hashCode;
 }

