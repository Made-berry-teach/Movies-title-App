import 'package:flutter/material.dart';
import 'package:movies_title_app/src/view_model/movie_vmodel.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key, required this.movies}) : super(key: key);

  final List<MovieViewModel> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(movie.poster),
              fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(6),
            ),
            width: 50,
            height: 100,
          ),
          title: Text(movie.title),
        );
      },
    );
  }
}
