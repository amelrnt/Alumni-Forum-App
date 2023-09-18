import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardNotification extends StatefulWidget {
  int cardCategory;

  CardNotification({super.key, required this.cardCategory});

  @override
  State<CardNotification> createState() => _CardNotificationState();
}

class _CardNotificationState extends State<CardNotification> {
  @override
  Widget build(BuildContext context) {
    if (widget.cardCategory == 1) {
      return FollowUser();
    } else if (widget.cardCategory == 2) {
      return JoinForum();
    } else if (widget.cardCategory == 3) {
      return LikedPost();
    } else if (widget.cardCategory == 4) {
      return CommentPost();
    } else {
      return Container();
    }
  }
}

class FollowUser extends StatelessWidget {
  const FollowUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Navigate to followers page
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Go to followers page clicked!",
                  ),
                  duration: Duration(
                    milliseconds: 1250,
                  ),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Profile picture clicked!",
                        ),
                        duration: Duration(
                          milliseconds: 1500,
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/profile_icon.svg',
                    width: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230,
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Yusril",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Profile name clicked!",
                                      ),
                                      duration: Duration(
                                        milliseconds: 1500,
                                      ),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: " mulai mengikuti anda",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "2j",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Ikuti button clicked!",
                          ),
                          duration: Duration(
                            milliseconds: 1500,
                          ),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(
                          width: 2,
                          color: redColorTheme,
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(redColorTheme),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(redColorTheme),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    child: Text(
                      "Ikuti",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: silverColorTheme,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JoinForum extends StatelessWidget {
  const JoinForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 15.0,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Navigate to followers page
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Go to forum member page clicked!",
                      ),
                      duration: Duration(
                        milliseconds: 1250,
                      ),
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Profile picture clicked!",
                            ),
                            duration: Duration(
                              milliseconds: 1500,
                            ),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/profile_icon.svg',
                        width: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Amelia",
                                  style: TextStyle(
                                    color: darkRedColorTheme,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            "Profile name clicked!",
                                          ),
                                          duration: Duration(
                                            milliseconds: 1500,
                                          ),
                                        ),
                                      );
                                    },
                                ),
                                TextSpan(
                                  text: " ingin mengikuti forum anda: ",
                                  style: TextStyle(
                                    color: darkRedColorTheme,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "Alumni-Tefa",
                                  style: TextStyle(
                                    color: darkRedColorTheme,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            "5j",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Tolak button clicked",
                      ),
                      duration: Duration(
                        milliseconds: 1500,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(
                      width: 2,
                      color: redColorTheme,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "Tolak",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: redColorTheme,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Terima button clicked",
                      ),
                      duration: Duration(
                        milliseconds: 1500,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                  ),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(
                      width: 2,
                      color: redColorTheme,
                    ),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(grayColorTheme),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(redColorTheme),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  "Terima",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: grayColorTheme,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LikedPost extends StatelessWidget {
  const LikedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Navigate to postingan page
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Go to postingan page clicked!",
                  ),
                  duration: Duration(
                    milliseconds: 1250,
                  ),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/profile_icon.svg',
                      width: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: CircleAvatar(
                        backgroundColor: grayColorTheme,
                        child: SvgPicture.asset(
                          'assets/profile_icon.svg',
                          width: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230,
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Yusril",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Profile name clicked!",
                                      ),
                                      duration: Duration(
                                        milliseconds: 1500,
                                      ),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: " dan ",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Amelia",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Profile name clicked!",
                                      ),
                                      duration: Duration(
                                        milliseconds: 1500,
                                      ),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: " menyukai postingan anda",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "12j",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/apple_example.png',
                      width: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommentPost extends StatelessWidget {
  const CommentPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Navigate to postingan page
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Go to postingan page clicked!",
                  ),
                  duration: Duration(
                    milliseconds: 1250,
                  ),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Profile picture clicked!",
                        ),
                        duration: Duration(
                          milliseconds: 1500,
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/profile_icon.svg',
                    width: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230,
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "JTI",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Profile name clicked!",
                                      ),
                                      duration: Duration(
                                        milliseconds: 1500,
                                      ),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: " mengomentari postingan anda: ",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "keren banget bro!",
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        "15j",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/apple_example.png',
                      width: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
