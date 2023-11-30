import 'dart:math';
main() {

}

// 클레릭 성직자 클래스
class Cleric {
  // 이름
  String name;
  // 체력
  int hp;
  // 마력
  int mp;
  // 최대 체력
  final int maxHp = 50;
  // 최대 마력
  final int maxMp = 10;

  Cleric( this.name, this.hp, this.mp );

  //selfAid() 메소드
  void selfAid() {

    if(mp < 10 && mp >= 5){
        hp =maxHp;
        mp =mp -5;
    }else if( mp < 5){
        print('마력이 부족 합니다.');
    }else{}
  }

  // pray
  int pray(int prayTime){
    Random heal = Random();
    int totalRamdomNum = 0; // 리턴할 값을 0으로 초기화

    // 받은 시간 만큼 랜덤으로 돌리기
    for(int i =0; i<prayTime; i++ ){
      totalRamdomNum  += heal.nextInt(3);
    }

    //mp에 mp 와 랜덤값을 추가한다.
    mp  = mp + totalRamdomNum;

    // 최대 MP 보다 더 회복하는 것은 불가능 하다.
      if(mp <10){
        mp =10;
      }
      return totalRamdomNum;
  }

}
