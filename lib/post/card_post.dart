import 'dart:ui';

import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardPost extends StatefulWidget {
  final double topSpace;
  final double bottomSpace;

  const CardPost({super.key, this.topSpace = 0.0, this.bottomSpace = 0.0});

  @override
  State<CardPost> createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: widget.topSpace, bottom: widget.bottomSpace),
      color: grayColorTheme,
      child: Column(
        children: [
          // Forum and buka forum button section
          ForumHeader(
            forumTitle: "Forum",
            forumSubtitle: "Lowongan Kerja",
          ),
          // Profile, date and option button section
          ProfileInfo(
            profileName: "Sukijan Froyo",
            profileRole: "Project Manager di PT. Perkasa Utama",
          ),
          // Post Content
          PostContent(
            content:
                "Informasi!!\n\nIni nantinya akan berisi konten sesuai dengan yang masuk di database. Jadi, isi saja semaumu. Jangan sungkan mengeluarkan uneg-unegmu!",
          ),
          // Like, comment and share section
          ReactionsBar(
            reactions: 124,
            comments: 230,
          )
        ],
      ),
    );
  }
}

class ForumHeader extends StatelessWidget {
  final String forumTitle;
  final String forumSubtitle;

  ForumHeader({this.forumTitle = "", this.forumSubtitle = ""});

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: silverColorTheme,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forumTitle,
                  style: TextStyle(
                      color: redColorTheme,
                      fontSize: 9,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  forumSubtitle,
                  style: TextStyle(
                      color: redColorTheme,
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Buka Forum Button Clicked!"),
                ));
              },
              child: Text(
                "Buka Forum",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 10)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(grayColorTheme),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(redColorTheme),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String profileName;
  final String profileRole;

  ProfileInfo({this.profileName = "", this.profileRole = ""});

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: grayColorTheme,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Profile Section
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Profile Section Clicked!"),
                ));
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: redColorTheme,
                    radius: 15,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profileName.toUpperCase(),
                        style: TextStyle(
                            color: redColorTheme,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        profileRole,
                        style: TextStyle(
                            color: redColorTheme,
                            fontSize: 9,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Date and option button
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "2 hari yang lalu",
                  style: TextStyle(
                      color: redColorTheme,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Option Button Clicked!"),
                      ));
                    },
                    child: SvgPicture.asset('assets/option_button.svg'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PostContent extends StatelessWidget {
  final String content;

  PostContent({this.content = ""});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Section Content Clicked!")));
      },
      child: Ink(
        color: grayColorTheme,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Text(
            content,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: darkRedColorTheme, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

class ReactionsBar extends StatelessWidget {
  final int reactions;
  final int comments;

  ReactionsBar({this.reactions = 0, this.comments = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Reaction Clicked!")));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/reaction_icon.svg",
                      width: 13,
                      height: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      reactions.toString(),
                      style: TextStyle(fontSize: 10, color: redColorTheme),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Comment Clicked!")));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/comment_icon.svg",
                      width: 13,
                      height: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      comments.toString(),
                      style: TextStyle(fontSize: 10, color: redColorTheme),
                    )
                  ],
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Share Clicked!")));
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/share_icon.svg',
                  width: 13,
                  height: 13,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Share",
                  style: TextStyle(fontSize: 10, color: redColorTheme),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
