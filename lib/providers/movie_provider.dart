import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/movie.dart';
import '../services/api_service.dart';

final movieProvider = FutureProvider<List<Movie>>((ref) async {
  return ApiService().fetchMovies();
});
