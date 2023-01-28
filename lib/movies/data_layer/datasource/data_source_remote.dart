import 'package:dio/dio.dart';
import 'package:movie_app/movies/data_layer/models/movie_model.dart';

import '../../../core/util/app_constance.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlaying();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<MovieModel>> getPopularMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  getNowPlaying() async {
    var response = await Dio().get(AppConstance.nowPlayingPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      return [];
    }
  }

  @override
  getPopularMovies() async {
    var response = await Dio().get(AppConstance.getPopularMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      return [];
    }
  }

  @override
  getTopRatedMovies() async {
    var response = await Dio().get(AppConstance.getTopRatedMovies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromjson(e)));
    } else {
      return [];
    }
  }
}