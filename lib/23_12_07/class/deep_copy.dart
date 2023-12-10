void main() {
  print(Student(name: '학생1', classRoom:  '강의실1', age:10,) == Student(name: '학생1', classRoom:  '강의실1', age:10));

  final s1 = Student(name: '학생1', classRoom:  '강의실1', age:10);

  final clone = Student( name: s1.name , classRoom: s1.classRoom, age: s1.age );

  print(s1 == clone);

  final s2 = s1.copyWith();
  print(s1 == s2);

  final s3 = s1.copyWith(name:'학생1');
  print(s3);

  final s4 = s1.copyWith(age: 12, name: '학생1',classRoom: '강의실1 ');
  print(s4);

  final s5 = s1.copyWith(name: '학생1', age: 11);
  print(s5);

  String name = '22';


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
    return 'Student{name: $name, classRoom: $classRoom, age: $age}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Student && runtimeType == other.runtimeType &&
              classRoom == other.classRoom;

  @override
  int get hashCode => classRoom.hashCode;
 }

