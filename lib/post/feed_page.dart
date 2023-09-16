import 'dart:ui';

import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/post/card_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColorTheme,
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const CardPost();
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
