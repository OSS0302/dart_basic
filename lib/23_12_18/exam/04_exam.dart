//문자열 뒤집기 함수:
//
// 입력으로 문자열을 받아들이는 함수 reverseString을 작성하세요.
// reverseString 함수는 입력된 문자열을 뒤집어 반환해야 합니다.
// 예를 들어, reverseString("Hello")는 "olleH"를 반환해야 합니다.

import 'package:collection/collection.dart';

String reverseString(String word) {
  final reversedWord = word.split('').reversed.join();

  return reversedWord;
}

void main() {
  print(reverseString('Hello world')); //dlrow olleH
}
