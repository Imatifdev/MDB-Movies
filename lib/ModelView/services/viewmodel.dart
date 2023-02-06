// // ignore_for_file: depend_on_referenced_packages

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:mdb_movies/Model/moviemodel.dart';
// import 'package:http/http.dart' as http;
// import 'package:mdb_movies/utilities.dart';

// class MovieViewModel {
//   Future<MovieModel> getmoviesdata() async {
//     final response = await http.get(Uri.parse(Api.apiendpoint));
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       return MovieModel.fromJson(data);
//     } else {
//       throw Exception("Error");
//     }
//   }
// }
