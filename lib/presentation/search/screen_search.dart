import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/core/constants.dart';
import 'package:movie_zone/presentation/search/widgets/search_idle.dart';
import 'package:movie_zone/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              prefixInsets: const EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
              suffixIcon: Icon(Icons.close, color: Colors.grey),
              suffixInsets: const EdgeInsetsDirectional.fromSTEB(0, 0, 13, 0),
              style: TextStyle(color: Colors.white),
              backgroundColor: Colors.grey.withValues(alpha: 0.4),
            ),
            kHeight,
            // Expanded(child: SearchIdle()),
            Expanded(child: SearchResultWidget()),
          ],
        ),
      ),
    );
  }
}
