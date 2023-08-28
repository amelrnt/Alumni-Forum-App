import 'dart:ui';

import 'package:alumni_forum_app/helper/custom_theme.dart';
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
        child: ListView(
          children: [
            // Section 1
            Padding(
                padding: EdgeInsets.only(bottom: 11),
                child: Card(
                  color: grayColorTheme,
                  child: Column(
                    children: [
                      // Forum and buka forum button section
                      Ink(
                        color: silverColorTheme,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Forum",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Lowongan Kerja",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Buka Forum Button Clicked!"),
                                  ));
                                },
                                child: Text(
                                  "Buka Forum",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.symmetric(horizontal: 10)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            grayColorTheme),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            redColorTheme),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)))),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Profile, date and option button section
                      Ink(
                        color: grayColorTheme,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Profile Section
                              InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sigit Sujarwo".toUpperCase(),
                                          style: TextStyle(
                                              color: redColorTheme,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Senior QC di PT. Jaya Abadi",
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
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("Option Button Clicked!"),
                                        ));
                                      },
                                      child: SvgPicture.asset(
                                          'assets/option_button.svg'))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Section Content Clicked!")));
                        },
                        child: Ink(
                          color: grayColorTheme,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Text(
                              "Informasi!!\n\nIni nantinya akan berisi konten sesuai dengan yang masuk di database. Jadi, isi saja semaumu. Jangan sungkan mengeluarkan uneg-unegmu!",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: darkRedColorTheme, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      // Like, comment and share section
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content:
                                                Text("Reaction Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "127",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
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
                                        SnackBar(
                                            content: Text("Comment Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "102",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Share Clicked!")));
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
                                    style: TextStyle(
                                        fontSize: 10, color: redColorTheme),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            // Section 2
            Padding(
                padding: EdgeInsets.only(bottom: 11),
                child: Card(
                  color: grayColorTheme,
                  child: Column(
                    children: [
                      // Forum and buka forum button section
                      Ink(
                        color: silverColorTheme,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Forum",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Lowongan Kerja",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Buka Forum Button Clicked!"),
                                  ));
                                },
                                child: Text(
                                  "Buka Forum",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.symmetric(horizontal: 10)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            grayColorTheme),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            redColorTheme),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)))),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Profile, date and option button section
                      Ink(
                        color: grayColorTheme,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Profile Section
                              InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sigit Sujarwo".toUpperCase(),
                                          style: TextStyle(
                                              color: redColorTheme,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Senior QC di PT. Jaya Abadi",
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
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("Option Button Clicked!"),
                                        ));
                                      },
                                      child: SvgPicture.asset(
                                          'assets/option_button.svg'))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Section Content Clicked!")));
                        },
                        child: Ink(
                          color: grayColorTheme,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Text(
                              "Informasi!!\n\nIni nantinya akan berisi konten sesuai dengan yang masuk di database. Jadi, isi saja semaumu. Jangan sungkan mengeluarkan uneg-unegmu!",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: darkRedColorTheme, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      // Like, comment and share section
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content:
                                                Text("Reaction Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "127",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
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
                                        SnackBar(
                                            content: Text("Comment Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "102",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Share Clicked!")));
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
                                    style: TextStyle(
                                        fontSize: 10, color: redColorTheme),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            // Section 3
            Padding(
                padding: EdgeInsets.only(bottom: 11),
                child: Card(
                  color: grayColorTheme,
                  child: Column(
                    children: [
                      // Forum and buka forum button section
                      Ink(
                        color: silverColorTheme,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Forum",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Lowongan Kerja",
                                    style: TextStyle(
                                        color: redColorTheme,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Buka Forum Button Clicked!"),
                                  ));
                                },
                                child: Text(
                                  "Buka Forum",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.symmetric(horizontal: 10)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            grayColorTheme),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            redColorTheme),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)))),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Profile, date and option button section
                      Ink(
                        color: grayColorTheme,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Profile Section
                              InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sigit Sujarwo".toUpperCase(),
                                          style: TextStyle(
                                              color: redColorTheme,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Senior QC di PT. Jaya Abadi",
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
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content:
                                              Text("Option Button Clicked!"),
                                        ));
                                      },
                                      child: SvgPicture.asset(
                                          'assets/option_button.svg'))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      // Content Section
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Section Content Clicked!")));
                        },
                        child: Ink(
                          color: grayColorTheme,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                            child: Text(
                              "Informasi!!\n\nIni nantinya akan berisi konten sesuai dengan yang masuk di database. Jadi, isi saja semaumu. Jangan sungkan mengeluarkan uneg-unegmu!",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: darkRedColorTheme, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      // Like, comment and share section
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content:
                                                Text("Reaction Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "127",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
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
                                        SnackBar(
                                            content: Text("Comment Clicked!")));
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        "102",
                                        style: TextStyle(
                                            fontSize: 10, color: redColorTheme),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Share Clicked!")));
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
                                    style: TextStyle(
                                        fontSize: 10, color: redColorTheme),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
