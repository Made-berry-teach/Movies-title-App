import 'dart:convert';

import 'package:movies_title_app/src/models/movies_model.dart';
import 'package:http/http.dart' as http;

class WebServices {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = "http://www.omdbapi.com/?s=$keyword&apikey=dc6fc358";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body['Search'];
      return json.map((e) => Movie.fromJson(e)).toList();
    } else {
      throw Exception('Unable to perform request');
    }
  }
}
