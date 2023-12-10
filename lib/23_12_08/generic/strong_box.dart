// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

class StrongBox<E> {
  E? _strongItem;
  int _count;
  KeyType _keyType;
  int boxOpenCount = 10000;

  StrongBox({
    required KeyType keyType,
  })  : _keyType = keyType,
        _count = keyOpenCount[keyType] ?? 0;

  void put(E data) {
    _strongItem = data;
  }

  // getter
  E? get() {
    boxOpenCount = boxOpenCount + 1;
    (_count < boxOpenCount) ? _strongItem : null;
  }
}

enum KeyType {
  //1024 회 이상 열면 오픈
  padlock,
  //10000 회 이상 열면 오픈
  button,
  //30000 회 이상 열면 오픈
  dial,
  //100000 회 이상 열면 오픈
  finger,
}

// map <Key value>
Map<KeyType, int> keyOpenCount = {
  KeyType.padlock: 1024,
  KeyType.button: 100000,
  KeyType.dial: 30000,
  KeyType.finger: 1000000,
};

void main() {
  //padlockBox
  StrongBox<String> padlockBox = StrongBox(keyType: KeyType.padlock);
  padlockBox.put('padlockBox 오픈');
  for (int i = 0; i <= 1024; i++) {
    String? getBox = padlockBox.get();
    if (getBox != null) {
      print('getBox: $getBox');
    }
  }

  //buttonBox
  StrongBox<String> buttonBox = StrongBox(keyType: KeyType.padlock);
  buttonBox.put('buttonBox 오픈 ');
  for (int i = 0; i <= 10000; i++) {
    String? getBox = buttonBox.get();
    if (getBox != null) {
      print('getBox: $getBox');
    }

    // dialBox
    StrongBox<String> dialBox = StrongBox(keyType: KeyType.padlock);
    dialBox.put('dialBox 오픈 ');
    for (int i = 0; i <= 30000; i++) {
      String? getBox = dialBox.get();
      if (getBox != null) {
        print('getBox: $getBox');
      }
    }

    // fingerBox
    StrongBox<String> fingerBox = StrongBox(keyType: KeyType.padlock);
    fingerBox.put('fingerBox 오픈 ');
    for (int i = 0; i <= 30000; i++) {
      String? getBox = fingerBox.get();
      if (getBox != null) {
        print('getBox: $getBox');
      }
    }
  }
}
