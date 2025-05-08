import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/widgets/number_card.dart';
import 'package:movie_zone/presentation/home/widgets/main_title_plus_card.dart';

ValueNotifier<bool> isScrollingDown = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: isScrollingDown,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.reverse) {
                isScrollingDown.value = false;
              } else if (notification.direction == ScrollDirection.forward) {
                isScrollingDown.value = true;
              }

              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    Stack(
                      children: [
                        _backGroundImage(),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _myListButton(),
                                _playButton(),
                                _infoButton(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    MainTitleCard(title: 'Released in the past year'),
                    MainTitleCard(title: 'Trending now'),
                    MainTitleCard(
                      title: 'Top 10 TV Shows',
                      isnNumberCard: true,
                    ),
                    MainTitleCard(title: 'Cinema now'),
                  ],
                ),
                isScrollingDown.value == true
                    ? _topSection()
                    : SizedBox.shrink(),
              ],
            ),
          );
        },
      ),
    );
  }

  AnimatedContainer _topSection() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2000),
      color: Colors.black.withValues(alpha: 0.3),
      width: double.infinity,
      height: 100,
      child: Column(children: [_topRowIcons(), _topRowButtons()]),
    );
  }

  Padding _topRowIcons() {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 15),
      child: Row(
        children: [
          Spacer(),
          kWidth,
          Icon(Icons.cast, color: Colors.white, size: 30),
          kWidth,
          Container(color: Colors.blue, width: 30, height: 30),
          kWidth,
        ],
      ),
    );
  }

  Row _topRowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'TV Shows',
            style: TextStyle(
              fontSize: 18,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Movies',
            style: TextStyle(
              fontSize: 18,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Container _backGroundImage() {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4edFyasCrkH4MKs6H4mHqlrxA6b.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Column _myListButton() {
    return Column(
      children: [
        Icon(Icons.add, color: kWhiteColor, size: 27),
        Text('My List', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(kWhiteColor)),
      label: Text('Play', style: TextStyle(fontSize: 16, color: kBlackColor)),
      icon: Icon(Icons.play_arrow, size: 20, color: kBlackColor),
    );
  }

  Column _infoButton() {
    return Column(
      children: [
        Icon(Icons.info_outline, color: kWhiteColor, size: 27),
        Text('Info', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
