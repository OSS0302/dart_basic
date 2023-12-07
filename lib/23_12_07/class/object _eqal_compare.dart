void main() {
  //동등성 비교
  // 숫자
  print(20.hashCode);
  print(15.hashCode);
  // 글자
  print('hello'.hashCode);
  print('hello1'.hashCode);

  final s1 = Student(name: '학생1', classRoom: 'classRoomA', age: 14);
  //final s2 = Student(name: '학생1', classRoom: 'classRoomA', age: 14);
  final s2 = Student(name: '학생2', classRoom: 'classRoomB', age: 12);

  print(s1 == s2);
}

// 클래스 학생 생성
class Student {
  String name;
  String classRoom;
  int age;

  //생성자
  Student({
    required this.name,
    required this.classRoom,
    required this.age,
  });


  // 나이기준
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Student && runtimeType == other.runtimeType && age == other.age;

  @override
  int get hashCode => age.hashCode;


}
