import 'dart:io';

import 'package:dart_basic/23_12_11/file/file_pratice.dart';

void main() {
  //파일 열기
  final file = File('source.txt');

  // 파일 을 읽가나 파일 쓰고 닫는다.
  file.writeAsStringSync('Hello Flutter');

  try {
    final text = file.readAsStringSync();
    print(text);
  } catch (e) {
    print('파일이 존재하지 않습니다.');
  }

  // 복사 하기
  copy('save.txt', 'target.txt');
}

void copy(String source, String target) {}
