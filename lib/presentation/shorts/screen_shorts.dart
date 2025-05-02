import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_zone/presentation/shorts/widgets/video_list_item.dart';

class ScreenShorts extends StatelessWidget {
  const ScreenShorts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        children: List.generate(10, (index) => VideoListItem(index: index)),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
