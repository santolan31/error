import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxx';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';
 
  List<Movie> onDisplayMovies = [];
 
  MoviesProvider() {
    print('MoviesProvider Inicializado');
    getOnDisplayMovies();
  }
 
  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
 
   
 
    
 
    notifyListeners();
  }
}
 