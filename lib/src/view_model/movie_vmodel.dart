import 'package:movies_title_app/src/models/movies_model.dart';

class MovieViewModel {
  final Movie movie;

  MovieViewModel(this.movie);

  String get title {
    return movie.title;
  }

  String get poster {
    return movie.poster;
  }
}
