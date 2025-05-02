import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/shorts/widgets/video_action_widget.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black.withValues(alpha: 0.5),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          size: 30,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),

                // Right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/w220_and_h330_face/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg',
                        ),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),

                    VideoActionWidget(icon: Icons.add, title: 'LOL'),

                    VideoActionWidget(icon: Icons.share, title: 'LOL'),

                    VideoActionWidget(icon: Icons.play_arrow, title: 'LOL'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
