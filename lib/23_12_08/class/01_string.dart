void main() {
  String s1 = 'hello dart';
  String s2 = 'hello dart';

  // 해쉬 코드 확인하기
  print(s1.hashCode);
  print(s2.hashCode);

  // 월드 추가하기
  s1 += 'world';

  //해쉬코드 확인하기
  print(s1.hashCode);

  // 반복을 돌리면 인스턴스 갯수 100개 가 생성된다.
  for (int i = 0; i < 200; i++) {
    s1 += '$i';
  }

  // 버퍼 생성
  StringBuffer buffer = StringBuffer('Flutter');
  // 해쉬 코드 확인
  print(buffer.hashCode);

  buffer.write('or');
  buffer.write('Flutter');
  print(buffer.toString());

  print(buffer.hashCode);
}
