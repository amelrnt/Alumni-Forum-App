import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/search/card_search_default.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  TabController tabController;

  SearchPage({Key? key, required this.tabController});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  // int _currentTabIndex = 0; // Track the current tab index

  // @override
  // void initState() {
  //   super.initState();
  //   widget.tabController.addListener(_handleTabChange);
  // }

  // void _handleTabChange() {
  //   setState(() {
  //     _currentTabIndex = widget.tabController.index;
  //   });
  // }

  // @override
  // void dispose() {
  //   widget.tabController.removeListener(_handleTabChange);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [
        Center(
            child: Container(
          color: silverColorTheme,
          child: ListView.builder(
            itemBuilder: (context, index) {
              // return Text("User ke-${index}");
              return CardSearch(
                userOrForumName: "User ke-${index + 1}",
                isUser: true,
              );
            },
            itemCount: 20,
          ),
        )),
        Center(
            child: Container(
          color: silverColorTheme,
          child: ListView.builder(
            itemBuilder: (context, index) {
              // return Text("Forum ke-${index}");
              return CardSearch(
                userOrForumName: "Forum ke-${index + 1}",
                isUser: false,
              );
            },
            itemCount: 20,
          ),
        )),
      ],
    );
  }
}
