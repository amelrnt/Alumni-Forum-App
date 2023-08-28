import 'package:alumni_forum_app/forum/card_forum.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyForumList extends StatefulWidget {
  const MyForumList({super.key});

  @override
  State<MyForumList> createState() => _MyForumListState();
}

class _MyForumListState extends State<MyForumList> {
  List<String> forumNames = [
    'Forum Alumni Tefa',
    'Forum Suka Bercanda',
    'Forum Pecinta Golf'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColorTheme,
        title: Text(
          "Forum Saya",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: SizedBox(
                  width: 320,
                  height: 32,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: SvgPicture.asset(
                            'assets/search_icon.svg',
                          ),
                        ),
                        hintText: "Pencarian",
                        hintStyle:
                            TextStyle(fontSize: 12.0, color: redColorTheme),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 2,
                        ),
                        filled: true,
                        fillColor: grayColorTheme,
                        focusColor: grayColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: grayColorTheme,
                              width: 1,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: grayColorTheme,
                              width: 1,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: grayColorTheme,
                              width: 1,
                            ))),
                  ),
                ),
              ),
            )),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CardForum(
            forumName: forumNames[index],
          );
        },
        itemCount: forumNames.length,
      ),
    );
  }
}
