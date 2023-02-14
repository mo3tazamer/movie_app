class AppConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '748e405a82d52ef8ebda72cf0bcd95e3';
  static const String nowPlayingPath =
      '${baseUrl}/movie/now_playing?api_key=$apiKey';
  static const String getTopRatedMovies =
      '${baseUrl}/movie/top_rated?api_key=$apiKey';
  static const String getPopularMovies =
      '${baseUrl}/movie/popular?api_key=$apiKey';
}
