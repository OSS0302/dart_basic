import 'dart:convert';

import 'package:dart_basic/23_12_14/class/model.dart';
import 'package:http/http.dart' as http;



void main() async {

  //실습 1
  final Todo todo = await getTodo2(1);
  print(todo.title);
  print(todo.id);
  print(todo.userId);
  print(todo.completed);

  // 실습 2
  List<Todo> todos = await getTodos();
  for (var e in todos) {
  print('${e.toJson()}'

  );
  }


}

// 여러개 리스트 받을 때 패턴
Future<List<Todo>> getTodos2() async {
  // 서버에 데이터  요청
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // 제이슨 데이터 디코딩
  final jsonList = jsonDecode(response.body) as List<dynamic>;

  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

// 하나 받을 때 패턴
Future<Todo> getTodo2(int id) async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}

// 여러개 리스트 받을 때 패턴
Future<List<Todo>> getTodos() async {
  // 서버에서 요청
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // jsonString
  final jsonString = response.body;
  // 맵으로 변환
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

Future<Todo> getTodo(int id) async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  // 제이슨 데이터 스트링
  final jsonString = response.body;
  // 맵으로 변환
  final json = jsonDecode(jsonString);
  // 모델클래스로 변환
  // return Todo.fromJson(json);

  return Todo.fromJson(jsonDecode(response.body));
}