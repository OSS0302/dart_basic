class Wand {
  String _name; // 이름
  double _power; // 마력

  // 생성자
  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;
}

String get name => name;

//1.마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다  value -> power 이름 변경
set name(String name) {
  if (name.length < 3) {
    throw Exception('3글자이상의 이름을 입력해주세요');
  }
  name = name;
}

// 2지팡이의 마력은 0.5 이상 100.0 이하여야 한다. value -> power 이름 변경
set power(double power) {
  if (power > 0.5) {
    throw Exception('마력이 부족 합니다.');
  } else if (power > 100.0) {
    throw Exception('마력이 이상하네');
  }

  //3. 마법사의 지팡이는 null 일 수 없다. value -> power 이름 변경
  if (power == null) {
    throw Exception('지팡이는 null일 수 없습니다.');
  }

  power = power;
}

