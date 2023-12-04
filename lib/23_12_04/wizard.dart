

import 'wand.dart';

void main() {
  final Wizard wizard = Wizard(name: '마법사', hp: 50, mp: 10);
  //wizard.name = '3';
  //wizard.hp =11;
  final Wand wand = Wand(name: '나무지팡이', power: 20);
  //

}

class Wizard {
  Wand? wand;

  String _name;
  int _hp;
  int _mp;

  //  위저드 생성자
  Wizard({
    this.wand ,
    required String name,
    required int hp,
    required int mp,
  })  : _name = name,
        _hp = hp,
        _mp = mp;

  // name getter 와 setter
  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;




  //1.마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  // 이름 setter
  set name(String value) {
    if (value.length <= 3) {
      throw Exception('3글자이상의 이름을 입력해주세요');
    }
    _name = value;
  }

  //5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set hp(int value) {
    if (value == - hp) {
      hp = 0;
    }
    _hp = value;
  }

  // mp setter
  set mp(int value) {
    if(mp < 0 ){
      throw Exception('마법사의 MP는 0 보다 낮을 수없습니다');
    }
    _mp = value;
  }
}
