import 'package:flutter/material.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/search/widgets/movie_card.dart';
import 'package:movie_zone/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies'),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            childAspectRatio: 1 / 1.3,
            crossAxisCount: 3,
            children: List.generate(20, (index) {
              return MovieCard();
            }),
          ),
        ),
      ],
    );
  }
}
