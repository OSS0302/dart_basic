void main(){
  final Person person = Person(name: '홍길동');
    person.name = 'a';

}

class Person{
  String _name;

  Person({
    required String name,
  }) : _name = name;

  // getter
  String get name => _name;

  // setter  타탕성 검사
  set name(String value) {
    if(value.length <= 1){
      throw Exception('에러발생!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! ');
    }
    _name = value;
  }
}