import 'package:dart_basic/23_12_18/exam/02_exam.dart';
import 'package:test/test.dart';

// 짝수 판별기 함수:
//
// 입력으로 정수를 받아들이는 함수 isEven을 작성하세요.
// isEven 함수는 입력된 정수가 짝수인 경우 true를 반환하고, 홀수인 경우 false를 반환해야 합니다.
// 예를 들어, isEven(4)는 true를 반환해야 합니다

void main() {
  test('짝수인지 확인 하는 테스트 true', () {

    expect(isEven(10), true);
    expect(isEven(4), true);
    expect(isEven(1), false);
    //expect(isEven(3), true);
    expect(isEven(4), true);
  });
  test('홀수 인지 확인 하는 테스트 :false', () {

    expect(isEven(11), true);
    expect(isEven(3), true);
    expect(isEven(1), true);
    expect(isEven(4), false);
  });
}