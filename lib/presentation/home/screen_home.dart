import 'package:flutter/material.dart';
import 'package:movie_zone/presentation/widgets/number_card.dart';
import 'package:movie_zone/presentation/home/widgets/main_title_plus_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MainTitleCard(title: 'Released in the past year'),
          MainTitleCard(title: 'Trending now'),
          MainTitleCard(title: 'Top 10 TV Shows', isnNumberCard: true),
          MainTitleCard(title: 'Cinema now'),
        ],
      ),
    );
  }
}
