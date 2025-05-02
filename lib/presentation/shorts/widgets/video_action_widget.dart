import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Icon(icon, color: kWhiteColor, size: 30),
          Text(title, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
