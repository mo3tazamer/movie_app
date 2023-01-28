import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String id;
  final String backdropPath;
  final String originalTitle;
  final String overview;
  final String voteAverage;
  final String releaseDate;
  final List<int> genreIds;

  const Movie(
      {required this.id,
      required this.backdropPath,
      required this.originalTitle,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate,
      required this.genreIds});

  @override
  List<Object> get props => [
        id,
        backdropPath,
        originalTitle,
        overview,
        voteAverage,
        genreIds,
        releaseDate
      ];
}
