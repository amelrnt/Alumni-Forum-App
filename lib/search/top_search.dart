import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/search/card_search_default.dart';
import 'package:flutter/material.dart';

class TopSearch extends StatelessWidget {
  bool isUser;
  TopSearch({super.key, required this.isUser});

  List<Widget> generateCardSearchWidgets(int count, {bool isUser = true}) {
    List<Widget> cardSearchWidgets = [];
    for (int i = 0; i < count; i++) {
      cardSearchWidgets.add(
        CardSearch(
          userOrForumName: "${isUser ? 'User' : 'Forum'} ke-${i + 1}",
          isUser: isUser,
        ),
      );
    }
    return cardSearchWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 30),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "Pencarian teratas",
            style: TextStyle(
                color: darkRedColorTheme,
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
        ),
        ...generateCardSearchWidgets(5, isUser: isUser),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
          ),
          child: Center(
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Tampilkan lebih banyak text clicked!",
                    ),
                    duration: Duration(
                      milliseconds: 1250,
                    ),
                  ),
                );
              },
              child: Text(
                "Tampilkan lebih banyak",
                style: TextStyle(
                    color: darkRedColorTheme,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
