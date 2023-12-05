import 'package:dart_basic/11_29/dart_basic_3-2.dart';
import 'package:dart_basic/23_12_05/class/character.dart';
import 'package:dart_basic/23_12_05/class/slime.dart';

class Dancer extends Character {
  // superClass  생성자
  Dancer(super.name, super.hp);

  //재정의 공격 메서드
  @override
  void attack(Slime slime) {}
}

// Attackable 인터페이스
abstract interface class Attackable {
  void attack(Slime slime);
}

//Speakable 인터페이스
abstract interface class Speakable {
  void speak();
}

// 인터페이스 와 클래스 연결
class Dog implements Attackable {
  @override
  void attack(Slime slime) {
    // TODO: implement attack
  }
}
// 인터페이스 와 클래스 두개 이상 연결 하기
class Person implements Attackable , Speakable {

  @override
  void attack(Slime slime) {
    // TODO: implement attack
  }

  @override
  void speak() {
    // TODO: implement speak
  }

}
 // 회사에서 하지 말라고 하면 그냥 말 듣자
void main() {
  [1, 2, 3, 4, 5].where((element) => element % 2 == 0).forEach(print);
}
