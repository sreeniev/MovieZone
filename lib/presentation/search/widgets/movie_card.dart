import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w220_and_h330_face/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg',
          ),
        ),
      ),
    );
  }
}
