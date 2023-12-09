void main(){
  String name = '이름 이름';
  String name1 = '아름';

  // 길이
  print(name.length);
  // 해시 코드 변환 하기
  print(name.hashCode);
  //문자열 UTF-16 code 로 변경
  print(name.codeUnits);
  //비어있는지 확인
  print(name.isEmpty);
  //비어있지 않는지확인
  print(name.isNotEmpty);
  //이 문자열의 유니코드 코드 포인트의 Iterable 입니다 .
  print(name.runes);
  //타입 확인
  print(name.runtimeType);
  //비교하기
  print(name.compareTo(name1));
  // 다른 타입을 -> String 변환
  print(name.toString());
  //이 패턴을 문자열과 반복적으로 일치하는지
  print(name.allMatches(name1));
  //지정된 16비트 UTF-16 코드 단위를 반환
  print(name.codeUnitAt(2));
  // 포함 하고있는지  -> true , false 반환
  print(name.contains(name1));
  //문자열 끌을 비교 -> true , false 반환
  print(name.endsWith('름'));
  //처음 끝까지 일치하는 걸 index 로 알려준다.
  print(name.indexOf('이'));
  //이 패턴을 의 시작과 일치
  print(name.matchAsPrefix('이'));
  //이 문자열이 보다 짧은 경우 왼쪽을 채웁니다
  //print(name.padLeft(name));

  //이 문자열이 보다 짧은 경우 오른쪽을  채웁니다
  //print(name.padRight(name.));

    print('헬로'+'바다');
  final buffer = StringBuffer('flutter');
  print(buffer.length); // 7
}