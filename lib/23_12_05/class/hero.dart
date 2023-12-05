import 'package:dart_basic/23_12_05/class/slime.dart';
import 'package:dart_basic/23_12_05/class/super_hero.dart';
import 'package:dart_basic/23_12_05/class/sword.dart';

void main() {
  // 인스터스 생성
  //final hero = SuperHero(name: '홍길동', hp: 100);

  final hero = Hero(name: '용사', hp: 100);
  hero.name = 'aa';
  print(hero.hp);
  hero.hp = 100;

}



class Hero {
  String name;
  int _hp;
  Sword? sword;

  // Hero 생성자
  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp;

  // getter
  // 프로퍼티
  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }


  // 공격 기능
  void attack(Slime slime) {
    print('$name가 $slime을 공격했다');
    slime.hp -= 10;
  }

  // 런 기능
  void run() {
    print('$name이 뛰었다.');
  }

  // 잠자기 기능
  void sleep() {
    _hp = 100;
    print('$name 은 잠을 자고 회복했다.');
  }

}
