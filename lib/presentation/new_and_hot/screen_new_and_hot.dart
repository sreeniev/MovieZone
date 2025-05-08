import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/new_and_hot/coming_soon_item.dart';
import 'package:movie_zone/presentation/new_and_hot/everyone_watching_item.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ComingSoonItem(),
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => EveryoneWatchingItem(),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: AppBar(
        title: Text(
          'New & Hot',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
        actions: [
          Icon(Icons.cast, color: Colors.white, size: 30),
          kWidth,
          Container(color: Colors.blue, width: 30, height: 30),
          kWidth,
        ],
        bottom: TabBar(
          labelColor: kBlackColor,
          dividerColor: Colors.transparent,
          unselectedLabelColor: kWhiteColor,
          labelStyle: TextStyle(fontSize: 16),
          indicator: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(30),
          ),
          tabs: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Tab(text: '🍿 Coming soon'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Tab(text: '🎬 Everyone\'s watching'),
            ),
          ],
        ),
      ),
    );
  }
}
