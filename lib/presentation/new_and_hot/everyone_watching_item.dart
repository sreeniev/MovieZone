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
      height: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Friends', style: kBoldWhiteText.copyWith(fontSize: 25)),
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.network(
                  'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/rthMuZfFv4fqEU4JVbgSW9wQ8rs.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(right: 15, bottom: 15, child: _muteButton()),
            ],
          ),
          Row(
            children: [
              Text(
                'TALL GIRL',
                style: kBoldWhiteText.copyWith(fontSize: 35, letterSpacing: -2),
              ),
              Spacer(),
              _myListButton(),
              kWidth20,
              _infoButton(),
              kWidth,
            ],
          ),

          Text(
            'Coming Soon',
            style: kBoldWhiteText.copyWith(fontSize: 16, color: Colors.grey),
          ),
          kHeight,
          Text('TALL GIRL', style: kBoldWhiteText),
          Text(
            'fhihgefiuh iefhiwehfiuh wefihefi hief ihefhwefhwe hihgefiuh iefhiwehfiuh wefihefi hief ihefhwefhwe',
            style: kBoldWhiteText.copyWith(fontSize: 12, color: Colors.grey),
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

  Column _dateColumn() {
    return Column(
      children: [
        Text(
          'FEB',
          style: kBoldWhiteText.copyWith(fontSize: 23, color: Colors.grey),
        ),

        Text(
          '11',
          style: kBoldWhiteText.copyWith(fontSize: 23, letterSpacing: 3),
        ),
      ],
    );
  }

  Column _myListButton() {
    return Column(
      children: [
        Icon(Icons.notifications, color: kWhiteColor, size: 23),
        Text('Remind Me', style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Column _infoButton() {
    return Column(
      children: [
        Icon(Icons.info_outline, color: kWhiteColor, size: 23),
        Text('Info', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
