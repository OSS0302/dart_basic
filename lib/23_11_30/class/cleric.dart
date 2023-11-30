main() {
  Cleric cleric = Cleric('cleric', 50, 10);
  cleric.selfAid(2);
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
  void selfAid(int mp) {

    if(mp < 10 && mp >= 5){
        hp =50;
        mp =mp -5;
    }else if( mp < 5){
        print('마력이 부족 합니다.');
    }else{}
  }
}
