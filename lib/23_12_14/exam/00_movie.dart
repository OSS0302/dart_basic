// https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1
//
// 영화정보를 가져와서 모델에 담고 json 형태로 출력하기
import 'dart:convert';
import 'dart:developer';

import 'package:dart_basic/23_12_14/exam/00_movie_model.dart';
import 'package:http/http.dart' as http;

Future<MovieJson> movieFunction() async {
  // 데이터 요청
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  // json
  final jsonString = response.body;

  // 리스트 디코드
  final jsonList = jsonDecode(jsonString);
  print('jsonList ${jsonList.toString()}');
  // print(jsonList);
  return MovieJson.fromJson(jsonList);
  // return Json();

}

Future<void> main() async {
  print('dmd');
  await movieFunction();
  print(MovieJson);
 // final jsonList = await movie();
 // print('출력 값 ${jsonList.movieInfo.length}');

}
