import 'package:flutter/material.dart';
import 'package:movie_zone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          'Downloads',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: Colors.white, size: 30),
        kWidth,
        Container(color: Colors.blue, width: 30, height: 30),
        kWidth,
      ],
    );
  }
}
