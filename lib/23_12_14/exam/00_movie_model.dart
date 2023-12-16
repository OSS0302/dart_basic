class MovieInfo {
  final bool adult;
  final String? backdropPath;
  final List<dynamic> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  const MovieInfo({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) {
    return MovieInfo(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] != null
          ? json['backdrop_path'] as String
          : null,
      genreIds: json['genre_ids'] as List<dynamic>,
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: json['popularity'] as double,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      video: json['video'] as bool,
      voteAverage: json['vote_average'] as double,
      voteCount: json['vote_count'] as int,
    );
  }
}

class Dates {
  final String maxiMum;
  final String miniMum;

  const Dates({
    required this.maxiMum,
    required this.miniMum,
  });

  factory Dates.fromJson(Map<String, dynamic> json) {
    return Dates(
      maxiMum: json['maximum'] as String,
      miniMum: json['minimum'] as String,
    );
  }
}

class MovieJson {
  final Dates dates;
  final int page;
  final List<MovieInfo> movieInfo;
  final int totalPages;
  final int totalResults;

  const MovieJson({
    required this.dates,
    required this.page,
    required this.movieInfo,
    required this.totalPages,
    required this.totalResults,
  });

  Map<String, dynamic> toJson() {
    return {
      'dates': this.dates,
      'page': this.page,
      'movieInfo': this.movieInfo,
      'totalPages': this.totalPages,
      'totalResults': this.totalResults,
    };
  }

  factory MovieJson.fromJson(Map<String, dynamic> json) {
    return MovieJson(
        dates:  Dates.fromJson( json['dates']),
        page: json['page'] as int,
        movieInfo: json['results'] != null ? List<MovieInfo>.from(json['results'].map((result) => MovieInfo.fromJson(result))) : [],
        totalPages: json['total_pages'] as int,
        totalResults: json['total_results'] as int,
    );
  }
}

// class MovieList {
//   final Map<String, dynamic> dates;
//   final int page;
//   final List<Movie> results;
//   final int totalPages;
//   final int totalResults;
//
//   MovieList({
//     required this.dates,
//     required this.page,
//     required this.results,
//     required this.totalPages,
//     required this.totalResults,
//   });
//
//   factory MovieList.fromJson(Map<String, dynamic> json) {
//     return MovieList(
//       dates: json['dates'],
//       page: json['page'],
//       results: List<Movie>.from(json['results'].map((result) => Movie.fromJson(result))),
//       totalPages: json['total_pages'],
//       totalResults: json['total_results'],
//     );
//   }
// }
//
// class Movie {
//   final bool adult;
//   final String? backdropPath;
//   final List<int> genreIds;
//   final int id;
//   final String originalLanguage;
//   final String originalTitle;
//   final String overview;
//   final double popularity;
//   final String? posterPath;
//   final String releaseDate;
//   final String title;
//   final bool video;
//   final double voteAverage;
//   final int voteCount;
//
//   Movie({
//     required this.adult,
//     required this.backdropPath,
//     required this.genreIds,
//     required this.id,
//     required this.originalLanguage,
//     required this.originalTitle,
//     required this.overview,
//     required this.popularity,
//     required this.posterPath,
//     required this.releaseDate,
//     required this.title,
//     required this.video,
//     required this.voteAverage,
//     required this.voteCount,
//   });
//
//   factory Movie.fromJson(Map<String, dynamic> json) {
//     return Movie(
//       adult: json['adult'],
//       backdropPath: json['backdrop_path'],
//       genreIds: List<int>.from(json['genre_ids']),
//       id: json['id'],
//       originalLanguage: json['original_language'],
//       originalTitle: json['original_title'],
//       overview: json['overview'],
//       popularity: json['popularity'].toDouble(),
//       posterPath: json['poster_path'],
//       releaseDate: json['release_date'],
//       title: json['title'],
//       video: json['video'],
//       voteAverage: json['vote_average'].toDouble(),
//       voteCount: json['vote_count'],
//     );
//   }
// }