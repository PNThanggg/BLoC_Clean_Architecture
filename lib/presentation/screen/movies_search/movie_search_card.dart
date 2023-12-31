import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/presentation/themes/theme_text.dart';

import '../../../core/remote/provider/api_constant.dart';
import '../../../domain/entities/movie.dart';
import '../movie_details/movie_details_screen.dart';

class MovieSearchCard extends StatelessWidget {
  final Movie movie;
  const MovieSearchCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => MovieDetailsScreen(movieId: movie.id!),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: ApiConstant.getPosterPath(movie.posterPath!),
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movie.title!),
                  Text(
                    movie.overview!,
                    style: Theme.of(context).textTheme.greyCaption,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
