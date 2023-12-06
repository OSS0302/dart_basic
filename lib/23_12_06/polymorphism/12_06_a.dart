import 'package:dart_basic/23_12_06/polymorphism/12_06_b.dart';
import 'package:dart_basic/23_12_06/polymorphism/12_06_x_y.dart';

class A extends Y {
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

void main() {
  X obj = A();

  //Aa 가나온다.
  obj.a();

  // 호출 불가 오류가난다.
  // obj.b();
  // 호출 불가 오류가난다.
  // obj.c();

  //빈리스트 생성
  final aLists = <Y>[];
  aLists.add(A());
  aLists.add(B());

  for (var aList in aLists) {
    aList.b();
    aList.a();
  }
}
