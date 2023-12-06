import 'package:dart_basic/23_12_06/polymorphism/12_06_a.dart';
import 'package:dart_basic/23_12_06/polymorphism/12_06_x_y.dart';

class B extends Y {
  @override
  void a() {
    print('Ac');
  }

  @override
  void b() {
    print('Ac');
  }

  void c() {
    print('Ac');
  }
}

void main() {
  // 인스턴스 생성
  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();

  //빈리스트 생성
  final bLists = <Y>[];
  bLists.add(A());
  bLists.add(B());

  // 반복문 통해서 출력하기
  for (var bList in bLists) {
    bList.b();
    bList.a();
  }
}
