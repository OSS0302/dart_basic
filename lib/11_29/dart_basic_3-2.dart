//다음의 함수가 실행될 수 있도록 Class Person을 작성하시오
void main() {
  var person = Person('John Doe', 30,'man');
  person.printInfo();
  var person2 = Person('cash', 20, 'woman');
  person2.printInfo();
}

class Person{
  String name;
  int age;
  String group;
  Person(this.name , this.age ,this.group);
  void printInfo(){
    print('nmae:${name},age:${age},group: ${group}');

  }
}