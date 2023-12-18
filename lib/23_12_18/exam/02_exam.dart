//짝수 판별기 함수:
//
// 입력으로 정수를 받아들이는 함수 isEven을 작성하세요.
// isEven 함수는 입력된 정수가 짝수인 경우 true를 반환하고, 홀수인 경우 false를 반환해야 합니다.
// 예를 들어, isEven(4)는 true를 반환해야 합니다.

bool isEven(int even) {
  if(even % 2 ==0){
    return true;
  }else{
    return false;
  }
  // 삼항연산자
  //(even % 2 == 0) ? true : false;
}
