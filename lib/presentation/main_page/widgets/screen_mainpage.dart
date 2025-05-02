import 'package:flutter/material.dart';
import 'package:movie_zone/presentation/downloads/widgets/screen_downloads.dart';
import 'package:movie_zone/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:movie_zone/presentation/home/screen_home.dart';
import 'package:movie_zone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:movie_zone/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:movie_zone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
