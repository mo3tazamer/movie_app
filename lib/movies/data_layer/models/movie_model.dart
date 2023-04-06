import 'package:movie_app/movies/domain_layer/entites/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.backdropPath,
      required super.originalTitle,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate,
      required super.genreIds});

  factory MovieModel.fromjson(Map<String, dynamic> json) {
    return MovieModel(
        id: json['id'],
        backdropPath: json['backdrop_path'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        voteAverage: json['vote_average'],
        releaseDate: json['release_date'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)));
  }
}
