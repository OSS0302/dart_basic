void main() {
  //정렬 솔트 sort()

  // 해당하는 리스트 선언
  final List<int> nums = [3, 1, 6, 7, 8, 3, 4];

  // 오름차순
  nums.sort((c, d) => c.compareTo(d));

  // 내림차순
  //nums.sort((a,b)=> -a.compareTo(b));

  // sort 정렬 하지 않으면 이 규칙 정해서 해야한다 쉽게 메소드 쓰자
  // nums.sort((c, d) {
  //   if (c > d) {
  //     return 1;
  //   } else if (d > c) {
  //     return -1;
  //   } else {
  //     return 0;
  //   }
  // });
  // 출력하기
  print(nums);

  //글자 정렬하기
  final List<String> books = [
    '오준석의 플러터 생존 코딩',
    '오준석의 안드로이드 생존코딩 : 코틀린 편 ',
    '코딩 책 ',
  ];
  // 정렬 하기
  books.sort();
  print(books);
}

// 클래스 학생 생성
class Student implements Comparable<Student> {
  String name;
  String classRoom;
  int age;

  // 생성자
  Student({
    required this.name,
    required this.classRoom,
    required this.age,
  });

  // toString  맨마지막에 쓰자
  @override
  String toString() {
    return 'Student{classRoom: $classRoom}';
  }

  // 클래스룸 순으로 정렬
  @override
  int compareTo(Student other) {
    final classEqual = classRoom.compareTo(other.classRoom);

    if (classEqual == 0) {
      return -age.compareTo(other.age);
    }
    return classEqual;
  }
}
