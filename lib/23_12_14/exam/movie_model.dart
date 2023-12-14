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
      maxiMum: json['maxiMum'] as String,
      miniMum: json['miniMum'] as String,
    );
  }
}

class Json {
  final Dates dates;
  final int page;
  final MovieInfo movieInfo;
  final int totalPages;
  final int totalResults;

  const Json({
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

  factory Json.fromJson(Map<String, dynamic> json) {
    return Json(
      dates:  Dates.fromJson( json['dates']),
      page: json['page'] as int,
      movieInfo: json['results'] as MovieInfo,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );
  }
}
