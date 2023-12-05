class Slime {
  final int level = 10; // final 옆에 타입을 꼭쓰자
  int hp; // hp


  // 생성자
  Slime( this.hp);
  // 런 메서드
  void attack(){
    final person = _Person();
  }
}

class _Person {}
void main(){
  // 슬라임 인스턴스 생성
  Slime slime1 = Slime(100);
  Slime slime2 = Slime(100);
}

