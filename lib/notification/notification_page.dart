import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/notification/card_notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grayColorTheme,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 20.0,
            ),
            child: Text(
              "Hari Ini",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
          // Card follow user
          CardNotification(cardCategory: 1),
          // Card join forum
          CardNotification(cardCategory: 2),
          // Card liked post
          CardNotification(cardCategory: 3),
          // Card comment post
          CardNotification(cardCategory: 4),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 40.0,
            ),
            child: Text(
              "Kemarin",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
          // Card follow user
          CardNotification(cardCategory: 1),
          // Card join forum
          CardNotification(cardCategory: 2),
          // Card liked post
          CardNotification(cardCategory: 3),
          // Card comment post
          CardNotification(cardCategory: 4),
        ],
      ),
    );
  }
}
