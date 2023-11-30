
main() {}

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