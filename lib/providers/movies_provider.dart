import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class MoviesProvider extends ChangeNotifier {
    String _apiKey = "d4422839ba466d71032d0b84d6f15914";
    String _baseUrl = "https://api.themoviedb.org";
    String _language = "es-Es";
    

    List<Movie> onDisPlayMovies = [];

    MoviesProvider() {
      print("MoviesProvieder inicializado");
    }

    getOnDisplayMovies() async {
      var url = Uri.https(_baseUrl, "3/movie/now_playing",
          {"api_key": _apiKey, "language": _language, "page": "1"});
      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
     final nowPlayingResponse = NowPlayingResponse.fromJson(jsonDecode(response.body));

      onDisPlayMovies = nowPlayingResponse.results;
      notifyListeners();
    }
  }

