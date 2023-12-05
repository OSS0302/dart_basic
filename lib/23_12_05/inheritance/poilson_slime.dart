// 이 클래스를 이용해, 다음 사양을 따르는 PoisonSlime 클래스를 작성하시오
// 독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
// PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
// PoisonSlime poisonSlime = PoisonSlime(‘A’);
// PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
// PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
// 우선, “보통 슬라임과 같은 공격"을 한다
// “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
// 화면에 “추가로, 독 포자를 살포했다!” 를 표시
// 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
// “독 공격의 남은 횟수" 를 1 감소 시킨다

import 'package:dart_basic/23_12_05/class/hero.dart';

void main() {
  Hero heroOne = Hero(name: '영웅1', hp: 50);
  PoisonSlime poisonSlime = PoisonSlime('독슬라임1');

  poisonSlime.attack(heroOne);
  print('${heroOne.name}의 HP가 ${heroOne.hp}남았다');
}

// 독슬라임(subcalss) 클래스 확장(계승)
class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int poisonAttackCount = 5;

  // 오버라이드 재정의
  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (0 < poisonAttackCount) {
      print('추가로, 독 포자를 살포했다!');
      int poisonAttackPoint = hero.hp ~/ 5;
      if (hero.hp <= poisonAttackPoint) {
        print('$poisonAttackPoint포인트 데미지');
        hero.hp = 0;
        poisonAttackCount -= 1;
        print('${hero.name} 죽음');
      } else {
        hero.hp -= poisonAttackPoint;
        print('$poisonAttackPoint포인트 데미지');
        poisonAttackCount -= 1;
      }
    } else {
      print('독 공격 횟수 초과');
    }
  }
}

// 슬라임
class Slime {
  final String suffix;
  int hp = 50; // hp

  // 생성자
  Slime(this.suffix);

  // 런 메서드
  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

// 히어로 클래스
class Hero {
  String name;
  int _hp;

  // Hero 생성자
  Hero({
    required this.name,
    required int hp,
  }) : _hp = hp;

  // getter // 프로퍼티
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
