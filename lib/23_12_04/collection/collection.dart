void main() {
  //넣어줄 리스트 생성
  final List<Person> actors = [];

  //인스턴스 생성

  Person hongNameAge = Person(name: '홍길동', age: 20);
  Person hanNameAge = Person(name: '한석봉', age: 25);

  //이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
  actors.add(hongNameAge);
  actors.add(hanNameAge);

  //List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.
  for (var listActor in actors) {
    print('listActor: ${listActor.name}의 나이는${listActor.age}살');
  }

  // 맵데이터를 선언과 출력
  Map<String, dynamic> actorNameAge = {
    for(Person mapActor in actors) mapActor.name: mapActor.age
  };
  for(var mapActor in actors){
    print('mapActor: ${mapActor.name}의 나이는${mapActor.age}살');
  }
}


//이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
class Person {
  String name;
  int age;

  // 생성자
  Person({
    required this.name,
    required this.age,
  });
}
