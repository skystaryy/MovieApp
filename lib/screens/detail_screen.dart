import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  DetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500${movie.posterPath}',
            ),
            const SizedBox(height: 16),
            Text(
              movie.overview,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
