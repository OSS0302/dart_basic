void main(){
  final Person person = Person(name: '홍길동');
    person.name = 'a';
}

class Person{
  String _name;

  Person({
    required String name,
  }) : _name = name;


  String get name => _name;

  set name(String value) {
    if(value.length <= 1){
      throw Exception('에러발생 ');
    }
    _name = value;
  }
}