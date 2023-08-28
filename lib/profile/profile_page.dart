import 'package:alumni_forum_app/forum/my_forum_list.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/post/card_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_widgets/flutter_sticky_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScrollController? _scrollController;
  late BuildContext _scaffoldContext;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scaffoldContext = context; // Store the context for later use

    _scrollController!.addListener(() {
      // double offset = _scrollController!.offset;
      // double maxScrollExtent = _scrollController!.position.maxScrollExtent;

      // if (offset <= 0) {
      //   // Scrolled to the maximum top
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: Text("Reached top"),
      //       duration: Duration(seconds: 2),
      //     ),
      //   );
      // } else if (offset >= maxScrollExtent) {
      //   // Scrolled to the maximum bottom
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //         content: Text("Reached bottom"), duration: Duration(seconds: 2)),
      //   );
      // }
      print(_scrollController!.offset);
    });

    return Scaffold(
      backgroundColor: redColorTheme,
      body: Column(
        children: [
          // Profile info
          ProfileInfo(
            name: "Sukijan Froyo",
            role: "Project Manager di PT. Perkasa Utama",
            postCount: 10,
            forumCount: 5,
            followingCount: 55,
            followerCount: 23,
          ),
          // Divider between profile info and scrollable posts
          Container(
            height: 50.0,
            color: darkRedColorTheme,
            child: Center(
              child: Text(
                "Postingan Saya".toUpperCase(),
                style: TextStyle(
                    color: silverColorTheme,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          // Scrollable posts
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 6,
              itemBuilder: (context, index) {
                final double topSpace = (index == 0) ? 0.0 : 4.0;
                final double bottomSpace = (index == 4) ? 0.0 : 4.0;

                return CardPost(
                  topSpace: topSpace,
                  bottomSpace: bottomSpace,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatefulWidget {
  final String name;
  final String role;
  final int postCount;
  final int forumCount;
  final int followingCount;
  final int followerCount;

  const ProfileInfo(
      {super.key,
      this.name = "",
      this.role = "",
      this.postCount = 0,
      this.forumCount = 0,
      this.followingCount = 0,
      this.followerCount = 0});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      color: redColorTheme,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile picture
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Profile Icon clicked!"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SvgPicture.asset(
                  'assets/profile_icon.svg',
                  color: silverColorTheme,
                  width: 85,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Text(
                  widget.name,
                  style: TextStyle(
                      color: silverColorTheme,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  widget.role,
                  style: TextStyle(
                      color: silverColorTheme,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    // Post
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: silverColorTheme, width: 2.0))),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Post clicked!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Post",
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              widget.postCount.toString(),
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Forum
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: silverColorTheme, width: 2.0),
                              right: BorderSide(
                                  color: silverColorTheme, width: 2.0))),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Forum clicked!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Forum",
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              widget.forumCount.toString(),
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Following
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: silverColorTheme, width: 2.0))),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Following clicked!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              widget.followingCount.toString(),
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Follower
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: silverColorTheme, width: 2.0))),
                      child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Follower clicked!"),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Text(
                              "Follower",
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              widget.followerCount.toString(),
                              style: TextStyle(
                                  color: silverColorTheme,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Ubah profil button clicked!"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.0, color: silverColorTheme),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Text(
                        "Ubah profil",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 13,
                            color: silverColorTheme,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Container(
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            color: silverColorTheme,
                            border:
                                Border.all(width: 1.0, color: silverColorTheme),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: GestureDetector(
                          onTap: () {
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(
                            //     content: Text("Forum Saya button clicked!"),
                            //     duration: Duration(seconds: 2),
                            //   ),
                            // );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyForumList()));
                          },
                          child: Center(
                            child: Text(
                              "Forum Saya",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: darkRedColorTheme,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Tambah forum button clicked!"),
                            duration: Duration(milliseconds: 500),
                          ),
                        );
                        setState(() {
                          isButtonTapped = true; // Button is tapped
                        });
                      },
                      onTapUp: (_) {
                        setState(() {
                          isButtonTapped = false; // Button is released
                        });
                      },
                      onTapCancel: () {
                        setState(() {
                          isButtonTapped = false; // Button tap is canceled
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Image.asset(
                          isButtonTapped
                              ? 'assets/profile_forum_plus_clicked.png'
                              : 'assets/profile_forum_plus_unclicked.png',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
