import 'package:collection/collection.dart';
import 'package:dart_basic/23_12_18/exam/03_exam.dart';

import 'package:test/test.dart';

void main() {
  test('최댓값 찾기 함수', () {
    expect(findMax([2,1,4,5,9,3]), 9); // 9 잘 작동
    // 7일 때 터지는지 확인
    // expect(findMax([2,1,2,3,8,3]), 7); // 터진다
     //expect(findMax([2,1,4,5,7,3]), 3); // 터진다
  });
    test('최솟값 찾기 ', () {
      expect(findMix([2,1,4,5,9,3]), 1); // 잘 나온다.


  });
}
