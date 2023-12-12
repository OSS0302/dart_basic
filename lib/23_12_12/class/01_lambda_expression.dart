import 'package:collection/collection.dart';

void printElement(int element){
  print(element);
}

void main(){
  List <int> list = [1,2,3,4,5];

  //패스 프린트엘리멘트 as a 인수 파라미터
  // void 함수 (int)
  list.forEach(printElement);
  list.forEach(print);


  // Iterable : 반복자
  final Iterable<int> filterList = list.where((e) =>e.isEven);
  final List<int> item = filterList.toList();

  // toList 리스트로변환하지 않으면 Iterable 로 나온다.
  print(list.where((e) =>e.isEven).toList());

  // 조건주고 리스트 변환
  print(list.where((e) => e.isEven).toList());

  //map 변환
  print(list.where((e) => e.isEven)
    .map((e) => 'e$e 번째'));

}