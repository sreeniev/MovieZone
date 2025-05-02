import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List _images = [
    'https://image.tmdb.org/t/p/w220_and_h330_face/gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg',
    'https://media.themoviedb.org/t/p/w220_and_h330_face/dg9e5fPRRId8PoBE0F6jl5y85Eu.jpg',
    'https://media.themoviedb.org/t/p/w220_and_h330_face/qWTfHG8KdXwr0bqypYbNZLenh0J.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView(
        children: [
          kHeight,
          const _SmartDownloads(),
          kHeight,
          Text(
            'Introducing downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          kHeight,
          Text(
            '''We will download a personalised selection of\nmovies and shows for you, so there is\nalways something to watch on your\ndevice.''',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.45,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // CircleAvatar(
                //   radius: screenSize.width * 0.30,
                //   backgroundColor: Colors.grey.withOpacity(0.5),
                // ),
                DownloadsImageWidget(
                  image: _images[0],
                  margin: EdgeInsets.only(left: 160, bottom: 50),
                  angle: 30,
                  size: Size(screenSize.width * 0.50, screenSize.width * 0.65),
                ),
                DownloadsImageWidget(
                  image: _images[1],
                  margin: EdgeInsets.only(right: 160, bottom: 50),
                  angle: -30,
                  size: Size(screenSize.width * 0.50, screenSize.width * 0.65),
                ),
                DownloadsImageWidget(
                  image: _images[2],
                  margin: EdgeInsets.only(bottom: 20),
                  size: Size(screenSize.width * 0.55, screenSize.width * 0.75),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kButonColorBlue,
            child: Text(
              'Setup',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          kHeight,
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kButonColorWhite,
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(Icons.settings, color: kWhiteColor),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.image,
    required this.margin,
    this.angle = 0,
    required this.size,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(5),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
