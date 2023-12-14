import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  postSample();
  getSample();
}

// get
Future<void> postSample() async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: {
      "userId": "2",
      "title": "바보야",
      "body": "adfasdfads",
    },
  );
  //create  201 나온다.
  print(response.statusCode);

  // 서버에서 response된 값이 jsonString 형태의 값이다.
  final jsonString = response.body;

  // 뭐를?? jsonString 을 맵(제이슨형태로 ) 형태로 디코드 하기
  Map<String, dynamic> json = jsonDecode(jsonString);

  //json 데이터 스트링으로변환
  print(json.toString());
}
// get (단일 데이터 가져올떄 )
Future <void> getSample() async {
  // http 라이브러리 통해서 서버에서 데이터를 가져와서 response 에 넣겠다
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

  // 서버에서 response된 값이 jsonString 형태의 값이다.
  final jsonString = response.body;

  // 응답된값을 상태 확인하기 201 200 400 404등
  print(response.statusCode);

  // 뭐를??  서버에서 가져온 jsonString 을 맵(제이슨 형태로) 형태로 디코드 하기 왜 ?? 내가 원하는 형태로 사용하기위해서
  Map<String, dynamic> json = jsonDecode(jsonString);

  // 제이슨 형태값을 ->  스트링으로 변환
  print(json.toString());
}
