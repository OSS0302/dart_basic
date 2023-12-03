import 'dart:math';

import 'package:dart_basic/23_11_30/class/hreo.dart';

//1장의 연습문제에서 작성한 Cleric클래스에 관하여, 2가지 수정을 행하시오.
// 현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다. 하지만,
// 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
// 그래서, 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.

//


// 최상위 함수(탑레벨) 선언
const int maxHp = 50;
const int maxMp = 10;

void main() {

}


// 클레릭 성직자 클래스
class Cleric {
  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  //selfAid() 메소드
  void selfAid() {
    if (mp >= 5) {
      hp = maxHp;
      mp = mp - 5;
    } else if (mp < 5) {
      print('마력이 부족 합니다.');
    }
  }

  // pray
  int pray(int prayTime) {
    Random heal = Random();

    // 리턴할 값을 0으로 초기화
    int recoveryMp = 0;

    // 받은 시간 만큼 랜덤으로 돌리기
    for (int i = 4; i < prayTime; i++) {
      recoveryMp += heal.nextInt(3);
    }

    //mp에 mp 와 랜덤값을 추가한다.
    mp = mp + recoveryMp;

    // 최대 MP 보다 더 회복하는 것은 불가능 하다.
    if (mp < 10) {
      mp = 10;
    }
    return recoveryMp;
  }
}
