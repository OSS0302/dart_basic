class Slime {
  final int level = 10; // final 옆에 타입을 꼭쓰자

  int hp; // hp
  String suffix; // 접미사

  // 생성자
  Slime(
      this.hp,
      this.suffix,
      );
  // 런 메서드
  void run(){
    print('슬라임 $suffix 가 도망갔다.');
  }
}

