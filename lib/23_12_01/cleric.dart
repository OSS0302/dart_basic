import 'dart:math';

// 최상위 함수(탑레벨) 선언
const int maxHp = 50;
const int maxMp = 10;

void main() {
  //A 이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다
  Cleric arthasA = Cleric('아서스A', hp: 40, mp: 5);
  print('아서스A 이름: ${arthasA.name}');
  print('아서스A hp: ${arthasA.hp}');
  print('아서스A mp: ${arthasA.mp}');

  //B 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다
  Cleric arthasB = Cleric('아서스B', hp: 35, mp: maxMp);
  print('아서스B 이름: ${arthasB.name}');
  print('아서스B hp: ${arthasB.hp}');
  print('아서스B mp: ${arthasB.mp}');

  //C 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
  Cleric arthasC = Cleric('아서스C', hp: maxHp, mp: maxMp);
  print('아서스C 이름: ${arthasC.name}');
  print('아서스C hp: ${arthasC.hp}');
  print('아서스C mp: ${arthasC.mp}');

  //D 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음)
  try {}
  catch (e) {
    print('이름이 없는 성직자는 존재 할 수가 없음');
  }

  // 생성자는 가능한 한 중복되는 코드가 없도록 작성한다  위에 중복 없이 헀다.
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
