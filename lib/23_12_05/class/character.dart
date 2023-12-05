import 'slime.dart';

abstract class Character {
  String name;
  int hp;

  //생성자
  Character(this.name, this.hp);

  // 도망 메서드
  void run() {
    print('뛰었다');
  }
  // 공격 메서드
  void attack(Slime slime);
}