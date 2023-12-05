
void main() {
  final Wizard wizard = Wizard(
      name: '마법사이름',
      wand: Wand(name: '아아아', power: 100.0),
      hp: 50,
      mp: 20);
  // 1. 마법사와 지팡이가 재대로 들어갈때
  try{
    print(wizard.name);
  }on Exception catch(e){
    print('3. $e');
  }
  // 2. 마법사 이름이 null
  try{
    wizard.name = '';
    print(wizard.name);
  }on Exception catch(e){
    print('2. $e');
  }
  // 3. 지팡이 이름이 null
  try{
    wizard.wand?.name = '';
    print(wizard.wand?.name);
  } on Exception catch(e){
    print('3. $e');
  }
  // 4. 지팡이 power 0.5이하
  try{
    wizard.wand?.power = 0.3;
    print(wizard.wand?.power);
  } on Exception catch(e){
    print('4. $e');
  }
}

class Wizard {
  Wand? wand;

  String _name;
  int _hp;
  int _mp;

  // name getter 와 setter
  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  // 위저드 생성자
  Wizard({
    this.wand,
    required String name,
    required int hp,
    required int mp,
  })  : _name = name,
        _hp = hp,
        _mp = mp;

  //1.마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  // 이름 setter
  set name(String value) {
    if (value.length < 3) {
      throw Exception('마법사의 이름을 3글자이상의 이름을 입력해주세요');
    }
    _name = value;
  }

  //5. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
  set hp(int wizardHp) {
    if (wizardHp == -hp) {
      hp = 0;
    }
    _hp = wizardHp;
  }

  // mp setter
  set mp(int wizardMp) {
    if (wizardMp < 0) {
      throw Exception('마법사의 마력은 0보다 낮을수 없습니다');
    }
    _mp = wizardMp;
  }
}

class Wand {
  final String _name; // 이름
  final double _power; // 마력

  // 생성자
  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  String get name => _name;
  double get power => _power;

//1.마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  set name(String value) {
    if (value.length < 3) {
      throw Exception('지팡이의 이름을 3글자이상의 이름을 입력해주세요');
    }
    name = value;
  }

// 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  set power(double wandPower) {
    if (0.5 > wandPower) {
      throw Exception('마력이 부족 합니다.');
    } else if (wandPower > 100.0) {
      throw Exception('마력이 이상하네');
    }

    power = wandPower;
  }
}
