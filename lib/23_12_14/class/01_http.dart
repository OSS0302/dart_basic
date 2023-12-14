import 'dart:convert';

import 'package:dart_basic/23_12_14/class/model.dart';
import 'package:http/http.dart' as http;

void main() async {
  //실습 1
  final Todo todo = await getTodo2(1);
  // // 제목 뽑아보기
  // print(todo.title);
  // //아이디만 뽑아보기
  // print(todo.id);
  // // 유저 아이디뽑아보기
  // print(todo.userId);
  // //completed 뽑아보기
  // print(todo.completed);
  // 전체 뽑아보기가
  print(todo);

  // 실습 2
 List<Todo> todos = await getTodos();
  for (var e in todos) {
    // 전체를 tojson 뽑아보기가
    print('${e.toJson()}');
    // 제목
    // print(e.title);
    // 아이디
    // print(e.id);
    // 유저 아이디
    // print(e.userId);
  }
}

// 여러개 리스트 받을 때 패턴
Future<List<Todo>> getTodos2() async {
  // 서버에 데이터  요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // 제이슨 데이터 디코딩
  final jsonList = jsonDecode(response.body) as List<dynamic>;

  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

// 하나 받을 때 패턴
Future<Todo> getTodo2(int id) async {
  // 서버요청
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  // 데이터를Todo 디코드해서  todoFromJson 모델클래스 안에 넣어준다
  return Todo.fromJson(jsonDecode(response.body));
}

// 여러개 리스트 받을 때 패턴
Future<List<Todo>> getTodos() async {
  // 서버에서 요청
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // 서버 가져온  jsonString 객체 넣는다
  final jsonString = response.body;
  // jsonList 를 디코드 해서 맵형태로 변환한다. 그리고 마지막에 리스트로 강제 형변환을 한다.
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  // jsonLis 요소를 => todoFromJson 모델클래스 안에 리스트 형 변환해서 넣어준다.
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

Future<Todo> getTodo(int id) async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  // 제이슨 데이터 스트링
  final jsonString = response.body;
  // 맵으로 변환
  final json = jsonDecode(jsonString);
  // 모델클래스로 변환
  // return Todo.fromJson(json);
  // 서버 에서 요청한 바디 데이터를 디코드 해서 모델클래스안에 넣어준다.
  return Todo.fromJson(jsonDecode(response.body));
}
