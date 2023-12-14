// https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1
//
// 영화의 상세정보를 모델에 담고 json 형태로 출력하기

import 'dart:convert';

import 'package:dart_basic/23_12_14/exam/movie_model.dart';
import 'package:http/http.dart' as http;

Future<List<MovieInfo>> movie() async {
  // 데이터 요청
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  // json
  final jsonString = response.body;
  //print(response.body);
  // 리스트 디코드
  final jsonList = jsonDecode(jsonString);
  final movieJsonList = jsonList['results'] as List<dynamic>;
  // toMap
  final movieData = movieJsonList.map((e) => MovieInfo.fromJson(e)).toList();
  return movieData;
}

void main() async {

}