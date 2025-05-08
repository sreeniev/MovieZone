import 'package:flutter/material.dart';
import 'package:movie_zone/core/colors/colors.dart';
import 'package:movie_zone/core/constants.dart';

class EveryoneWatchingItem extends StatelessWidget {
  const EveryoneWatchingItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 470,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Friends', style: kBoldWhiteText.copyWith(fontSize: 25)),
          kHeight,
          Text(
            'fhihgefiuh iefhiwehfiuh wefihefi hief ihefhwefhwe hihgefiuh iefhiwehfiuh wefihefi hief ihefhwefhwe',
            style: kBoldWhiteText.copyWith(fontSize: 16, color: Colors.grey),
          ),
          kHeight20,
          Stack(
            children: [
              SizedBox(
                width: width,
                height: 250,
                child: Image.network(
                  'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/rthMuZfFv4fqEU4JVbgSW9wQ8rs.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(right: 15, bottom: 15, child: _muteButton()),
            ],
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                _shareButton(),
                kWidth20,
                _myListButton(),
                kWidth20,
                _infoButton(),
                kWidth,
              ],
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar _muteButton() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.black.withValues(alpha: 0.5),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.volume_off, size: 25, color: kWhiteColor),
      ),
    );
  }

  Column _shareButton() {
    return Column(
      children: [
        Icon(Icons.share, color: kWhiteColor, size: 25),
        Text('Share', style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Column _myListButton() {
    return Column(
      children: [
        Icon(Icons.add, color: kWhiteColor, size: 25),
        Text('My List', style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Column _infoButton() {
    return Column(
      children: [
        Icon(Icons.play_arrow, color: kWhiteColor, size: 25),
        Text('Play', style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
