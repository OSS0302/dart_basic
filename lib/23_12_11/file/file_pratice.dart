import 'dart:io';

void main() {
  //파일 열기
  final file = File('source.txt');

  // 파일 을 읽가나 파일 쓰고 닫는다.
  file.writeAsStringSync('Hello Flutter');

  // 기본적으로 utf-8로 내장 되어있어서 굳이 따로 encoding : utf-8을 안해도 된다.
  file.readAsStringSync();

  try {
    final text = file.readAsStringSync();
    print(text);
  } catch (e) {
    print('파일이 존재 하지 않습니다.');
  }
  //호출하기
  copy('source.txt', 'target.txt');
}

void copy(String source, String target) async {
  final secondFile = File(target);
  // 복사 하기
  secondFile.writeAsStringSync(await File(source).readAsString());
}
