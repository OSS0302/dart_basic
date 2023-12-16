import 'dart:convert';

import 'package:dart_basic/23_12_14/exam/01_movie_model_class.dart';
import 'package:http/http.dart' as http;

// 여러개 리스트 받을 때 패턴
Future<List<Movie>> getMovieIfo(int id) async {
  // 서버에서 요청
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  // 서버 가져온  jsonString 객체 넣는다
  final jsonString = response.body;
  // jsonList 를 디코드 해서 맵형태로 변환한다. 그리고 마지막에 리스트로 강제 형변환을 한다.
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  // jsonLis 요소를 => todoFromJson 모델클래스 안에 리스트 형 변환해서 넣어준다.
  return jsonList.map((e) => Movie.fromJson(e)).toList();

}

void main() async {
  List<Movie> movieData = await getMovieIfo(891699);
  movieData.forEach((element) => print(element.toJson().toString()));
  // print(movieData.toString());
}