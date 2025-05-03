import 'package:flutter/material.dart';
import 'package:movie_zone/presentation/widgets/main_card.dart';
import 'package:movie_zone/presentation/widgets/number_card.dart';
import 'package:movie_zone/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
    this.isnNumberCard = false,
  });
  final String title;
  final bool isnNumberCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: MainTitle(title: title),
          ),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: _getCard(index),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getCard(int index) {
    return isnNumberCard ? NumberCard(index: index) : MainCard();
  }
}
