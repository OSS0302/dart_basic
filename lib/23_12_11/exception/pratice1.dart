void main() {
// 함수 호출
  print(someError());

  try {
    final numString = '10.5';

    int num = int.parse(numString);

    //출력하기
    print(num);
  } catch (e) {
    print(e);
  }
}

int someError() {
  int num = 0;
  // throw FormatException('예외가 발생하면 0 으로 처리');

  return num;
}
