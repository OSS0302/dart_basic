import 'package:dart_basic/23_12_05/class/hero.dart';
import 'package:dart_basic/23_12_05/class/slime.dart';
import 'package:dart_basic/23_12_05/class/sword.dart';

class SuperHero extends Hero {

  Sword? sword;
  bool _isFlying = false; //날고 있는지 체크 bool 타입

  SuperHero({required super.name, required super.hp});
  // getter
  bool get isFlying => _isFlying;

  //setter
  set isFlying(bool value) {
    _isFlying = value;
    if(value){
      print('$name이 날개를 펼쳤다');
    }else{
      print('$name 이 날개를 접었다.');
    }
  }

  // 공격 메서드
  @override
  void attack(Slime slime){
    print('공격자세를 취했다.');

    super.attack(slime);
    if (isFlying) {
      print('추가공격');
    }
  }

  // 도망 메서드기
  @override
  void run(){
    print('발에 땀이 나도록 뛰었다.');
  }



}



