import 'package:flutter/material.dart';
import 'package:movies_title_app/src/ui/widgets/movies_list.dart';
import 'package:movies_title_app/src/view_model/movie_list_vmodel.dart';
import 'package:provider/provider.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({Key? key}) : super(key: key);

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    //! TODO: implement initState
    super.initState();
    //Provider.of<MovieListViewModel>(context, listen: false).fetchMovies('batman');
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<MovieListViewModel>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _controller,
                onFieldSubmitted: (value) {
                  if (value.isNotEmpty) {
                    vm.fetchMovies(value);
                    _controller.clear();
                  }
                },
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              child: MovieList(movies: vm.movies),
            ),
          ],
        ),
      ),
    );
  }
}
