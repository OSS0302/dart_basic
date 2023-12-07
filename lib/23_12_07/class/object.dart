void main() {
  // 다이나믹 과 object 차이
  // 런타임에  코드가 실행중에 결정된다.
  dynamic dynamicVar = Student(name: '학생1', classRoom: 'A', age: 13);
  int i = 10;
  dynamicVar = 1;

  // compile
  // 오브젝트는 컴파일 될떄 코드 작성 될떄 결정된다.
  Student object = Student(name: '학생2', classRoom: 'B', age: 15);

  final students = <Student>{};

  final s1 = Student(name: '학생1', classRoom: 'A', age: 13);
  final s2 = Student(name: '학생2', classRoom: 'B', age: 15);
  //final s3 = Student(name: '학생3', classRoom: 'C', age: 17);

  // 맵에 데이터 넣기
  students.add(s1);
  print(students.length);
  students.add(s2);
  print(students.length);
  // students.add(s3);
  // print(students.length);

  final set = {'1', '1', '1', '1'};
  print(set.length);

  print(set.length);

  print(s1 == s2);

  print(object.hashCode);
  print(object.name.hashCode);
}

// 클래스 학생 생성
class Student {
  String name;
  String classRoom;
  int age;

  Student({
    required this.name,
    required this.classRoom,
    required this.age,
  });
}
