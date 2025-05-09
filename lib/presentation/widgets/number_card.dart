import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 45, height: 200),
            Container(
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
            ),
          ],
        ),
        Positioned(
          left: 20,
          bottom: -50,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: kBlackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
