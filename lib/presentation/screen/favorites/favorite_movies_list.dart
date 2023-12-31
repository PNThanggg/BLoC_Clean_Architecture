import 'package:flutter/material.dart';

import '../../../data/local/movie_table.dart';
import 'favorite_movie_card.dart';

class FavoriteMoviesList extends StatelessWidget {
  final List<MovieTable> movies;
  const FavoriteMoviesList({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: movies.length,
      itemBuilder: (ctx, i) => FavoriteMovieCard(movie: movies[i]),
    );
  }
}
