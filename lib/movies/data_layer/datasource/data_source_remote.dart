import 'package:dio/dio.dart';
import 'package:movie_app/core/error.dart';
import 'package:movie_app/movies/data_layer/models/movie_model.dart';

import '../../../core/network/error_message.dart';
import '../../../core/util/app_constance.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlaying();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<MovieModel>> getPopularMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  getNowPlaying() async {
    var response = await Dio(BaseOptions(validateStatus: (_) => true))
        .get(ApiConstance.nowPlayingPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.formjson(response.data));
    }
  }

  @override
  getPopularMovies() async {
    var response = await Dio().get(ApiConstance.getPopularMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.formjson(response.data));
    }
  }

  @override
  getTopRatedMovies() async {
    var response = await Dio().get(ApiConstance.getTopRatedMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.formjson(response.data));
    }
  }
}
