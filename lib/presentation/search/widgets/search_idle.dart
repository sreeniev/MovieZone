import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/search/widgets/title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Top searches'),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => TopSearchItemTile(),
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screenWidth * 0.37,
          height: 66,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(
                'https://media.themoviedb.org/t/p/w250_and_h141_face/8G6HCS82vNxgg5wp7oBDSk32XpF.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            'Name efhwef ifhiwhef wwefh hohf',
            style: TextStyle(
              color: kWhiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(Icons.play_circle, color: kWhiteColor, size: 40),
      ],
    );
  }
}
