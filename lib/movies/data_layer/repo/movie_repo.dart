import 'package:movie_app/movies/domain_layer/entites/movie.dart';
import 'package:movie_app/movies/domain_layer/repo/base_movie_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error.dart';
import '../../../core/network/failure.dart';
import '../datasource/data_source_remote.dart';

class MovieRepo extends BaseMovieRepo {
  BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepo(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    var result = await baseMovieRemoteDataSource.getNowPlaying();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServicesFailure(e.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    var result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServicesFailure(e.errorMessageModel.statusmessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    var result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServicesFailure(e.errorMessageModel.statusmessage));
    }
  }
}
