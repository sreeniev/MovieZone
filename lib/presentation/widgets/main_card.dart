import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
