void main(){
  String str1 = 'Hello flutter';
  String str2 = 'Hello flutter';

  // 두 객체의 인수가 동일한 객체 인지  확인 합니다.
  print(identical(str1, str2));

  //Jello dart
  print(str1.replaceAll('H', 'J'));
  // Hello dart
  print(str1);

  Student student1 = Student('김훈');
  Student student2 = Student('김훈');

  // 같은지 비교
  print(student1 == student2); // true
  // 두 객체의 인수가 동일한 객체 인지  확인 합니다..
  print(identical(student1, student2)); //false

}

class Student{
  final String name;

  const Student(this.name);

  // 동등성 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Student && runtimeType == other.runtimeType &&
              name == other.name;

  @override
  int get hashCode => name.hashCode;


}