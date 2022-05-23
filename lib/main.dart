import 'package:flutter/material.dart';
import 'package:movies_title_app/src/ui/movie_list_page.dart';
import 'package:movies_title_app/src/view_model/movie_list_vmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(create: (context) => MovieListViewModel(),
      child: MovieListPage(),
      ),
    );
  }
}
