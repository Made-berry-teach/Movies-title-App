import 'package:flutter/cupertino.dart';
import 'package:movies_title_app/src/services/wen_services.dart';
import 'package:movies_title_app/src/view_model/movie_vmodel.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future fetchMovies(String keyword) async {
    //! todo
    final result = await WebServices().fetchMovies(keyword);
    movies = result.map((e) => MovieViewModel(e)).toList();
    print(movies);
    notifyListeners();
  }
}
