// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

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

class StrongBox<E> {
  KeyType _keyType;
  E? _strongItem;
  int _count = 0;

  StrongBox(this._keyType);

  void put(E strongItem) => _strongItem = strongItem;

  E? get() {
    _count++;
    switch (_keyType) {
      case KeyType.padlock:
        if (_count > 1024) {
          return _strongItem;
        }
      case KeyType.button:
        if (_count > 10000) {
          return _strongItem;
        }
      case KeyType.dial:
        if (_count > 30000) {
          return _strongItem;
        }
      case KeyType.finger:
        if (_count > 1000000) {
          return _strongItem;
        }
        break;
    }
    return null;
  }
}

void main() {
  final padlockBox = StrongBox<String>(KeyType.padlock);
  padlockBox.put('padlockBox 오픈');
  for (int i = 0; i < 1025; i++) {
    print('${i + 1}번째: ${padlockBox.get()}');
  }
   final buttonBox = StrongBox<String>(KeyType.button);
   buttonBox.put('buttonBox 오픈');
   for (int i = 0; i < 10001; i++) {
     print('${i + 1}번째: ${buttonBox.get()}');
   }

  final dialBox = StrongBox<String>(KeyType.dial);
  dialBox.put('dialBox 오픈');
  for (int i = 0; i < 30001; i++) {
    print('${i + 1}번째: ${dialBox.get()}');
  }
  final fingerBox = StrongBox<String>(KeyType.finger);
  fingerBox.put('dialBox 오픈');
  for (int i = 0; i < 1000001; i++) {
    print('${i + 1}번째: ${fingerBox.get()}');
  }
}
