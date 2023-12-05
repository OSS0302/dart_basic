import 'package:dart_basic/23_12_05/class/sword.dart';

class SuperHero {
  String name;
  int hp;
  Sword? sword;
  bool _isFlying = false; //날고 있는지 체크 bool 타입

  SuperHero({
    required this.name,
    required this.hp,
    this.sword,
    required bool isFlying,
  }) : _isFlying = isFlying;
}

  // getter
  bool get isFlying => _isFlying;

  //setter
  set isFlying(bool value) {
    _isFlying = value;
    if (value) {
      print('$name이 날개를 펼쳤다.');
    } else {
      print('$name이 날개를 접었다.');
    }
  }
