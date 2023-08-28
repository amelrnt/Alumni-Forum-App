import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardForum extends StatefulWidget {
  final String forumName;

  const CardForum({super.key, this.forumName = ""});

  @override
  State<CardForum> createState() => _CardForumState();
}

class _CardForumState extends State<CardForum> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("${widget.forumName} clicked!"),
                duration: Duration(milliseconds: 1250),
              ));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/profile_icon.svg',
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    widget.forumName,
                    style: TextStyle(
                        color: darkRedColorTheme,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Hapus forum button clicked"),
                      duration: Duration(milliseconds: 1500),
                    ));
                  },
                  child: Text(
                    "Hapus",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: redColorTheme),
                  ),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 10)),
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(width: 2, color: redColorTheme)),
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(grayColorTheme),
                      // backgroundColor:
                      //     MaterialStateProperty.all<Color>(redColorTheme),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
