import 'dart:convert';

Future<void> main() async {
  // 호출하기
  String movieInfo = await getMovieInfo();
  Map<String, dynamic> movieInfoMap = jsonDecode(movieInfo);
  // 맵을 키 값으로 value 를 찾을 수있다.
  print(movieInfoMap['director']);

  // 클래스 toJson 값  가져오기
  await getMovieInfo().then((value) {
    Movie data = Movie.fromJson(jsonDecode(value));
    print(data.director);
  });
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}

class Movie {
  String? title;
  String? director;
  int? year;

  Movie({this.title, this.director, this.year});

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    director = json['director'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['director'] = this.director;
    data['year'] = this.year;
    return data;
  }
}

