import 'package:dart_basic/23_12_18/exam/04_exam.dart';
import 'package:test/test.dart';

void main() {
test('문자열 뒤집기', () {
  //잘 동작하는지 확인
  expect(reverseString('1'), '1');
  expect(reverseString('HelloWorld'), 'dlroWolleH');
  expect(reverseString('flutter'), 'rettulf');


  // 터트려보기
  expect(reverseString('flutter'), '1');
});

}
