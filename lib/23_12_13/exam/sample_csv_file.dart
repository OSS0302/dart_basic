import 'dart:io';

void main() {
  //파일 열기
  final file = File('sample.csv');

  // 파일 을 읽가나 파일 쓰고 닫는다.
  file.writeAsStringSync('1, 홍길동, 30 \n 2, 한석봉, 20');

  // 기본적으로 utf-8로 내장 되어있어서 굳이 따로 encoding : utf-8을 안해도 된다.
  file.readAsStringSync();

  try {
    final text = file.readAsString();
    print(text);
  } catch (e) {
    print('파일이 존재 하지 않습니다.');
  }
  //호출하기
  copy(source: 'sample.csv', target: 'sample copy.csv');
}

Future<void> copy({required String source  , required String target}) async {
  final secondFile = await File(target).create(recursive: true);
  String sampleString = await File(source).readAsString();


  // sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면
  //sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
  if (sampleString.contains('한석봉')) {
    await secondFile.writeAsString(sampleString.replaceAll('한석봉', '김석봉'));
    print(sampleString.split(','));

    await secondFile.writeAsString(sampleString.replaceAll('30', '50'));


    String sampleSecondString = await secondFile.readAsString();
    // print('두번째: $sampleSecondString');
  } else {
    throw Exception('파일이 존재 하지 않습니다.');
  }
}
