import 'package:alumni_forum_app/post/card_post.dart';
import 'package:flutter/material.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/helper/general_widget.dart';
import 'package:alumni_forum_app/notification/notification_page.dart';
import 'package:alumni_forum_app/post/add_post_widget.dart';
import 'package:alumni_forum_app/profile/profile_page.dart';
import 'package:alumni_forum_app/search/search_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List _children = [
    HomePageContent(
      title: "Home Page",
    ),
    SearchPage(),
    AddPostWidget(),
    NotificationPage(),
    ProfilePage()
  ];

  final _appBarTitle = [
    "Forum Alumni Teknik Mesin",
    "Pencarian",
    "Buat Post",
    "Notifikasi",
    "Profil"
  ];

  // final List _appBar = [DefaultAppBar(), SearchAppBar()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColorTheme,
      appBar: _buildAppBar(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: redColorTheme,
        // selectedItemColor: silverColorTheme,
        type: BottomNavigationBarType.fixed, // for icon more than 3
        // unselectedIconTheme: IconThemeData(color: notSelectedIconTheme),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? silverColorTheme
                    : notSelectedIconTheme,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/search_icon.svg',
                color: _currentIndex == 1
                    ? silverColorTheme
                    : notSelectedIconTheme,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? Image.asset('assets/selected_add_post.png')
                  : Image.asset(
                      'assets/add_post.png',
                    ),
              label: "Add Post"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/notification_icon.svg',
                color: _currentIndex == 3
                    ? silverColorTheme
                    : notSelectedIconTheme,
              ),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/profile_icon.svg',
                color: _currentIndex == 4
                    ? silverColorTheme
                    : notSelectedIconTheme,
              ),
              label: "Profile"),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    if (_currentIndex == 1) {
      return defaultSearchBar(
        hint: _appBarTitle[_currentIndex],
      );
    } else if (_currentIndex == 4) {
      return defaultAppBar(title: _appBarTitle[_currentIndex], elevation: 0.0);
    } else {
      return defaultAppBar(title: _appBarTitle[_currentIndex], elevation: 10.0);
    }
  }
}

class HomePageContent extends StatelessWidget {
  final String title;

  HomePageContent({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          // Determine whether to add padding to top, bottom, or both
          final double topSpace = (index == 0) ? 0.0 : 4.0;
          final double bottomSpace = (index == 4) ? 0.0 : 4.0;

          return CardPost(
            topSpace: topSpace,
            bottomSpace: bottomSpace,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
