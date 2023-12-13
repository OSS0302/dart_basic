Future<void> main() async {
  Future<String> outTime = timeoutFuture();
  //다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.
  outTime = outTime.timeout(Duration(seconds: 7), onTimeout: () => "timeOut");
  String result = await outTime;
  print(result);
}

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));

  return 'ok';
}
