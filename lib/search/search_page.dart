import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:alumni_forum_app/search/card_search_default.dart';
import 'package:alumni_forum_app/search/top_search.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  TabController tabController;
  FocusNode searchNode;

  SearchPage({Key? key, required this.tabController, required this.searchNode});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // listen to focus changes
    widget.searchNode.addListener(() {
      if (mounted) {
        setState(
          () {},
        ); //setState declared to make the widget loaded each time the textformfield tapped (has focus/focus on)
      }
      print(
        'focusNode updated: hasFocus: ${widget.searchNode.hasFocus}',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [
        Center(
          child: (widget.searchNode.hasFocus)
              ? Container(
                  color: grayColorTheme,
                  child: TopSearch(
                    isUser: true,
                  ),
                )
              : Container(
                  color: grayColorTheme,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CardSearch(
                        userOrForumName: "User ke-${index + 1}",
                        isUser: true,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
        ),
        Center(
          child: (widget.searchNode.hasFocus)
              ? Container(
                  color: grayColorTheme,
                  child: TopSearch(
                    isUser: false,
                  ),
                )
              : Container(
                  color: grayColorTheme,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return CardSearch(
                        userOrForumName: "Forum ke-${index + 1}",
                        isUser: false,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
        ),
      ],
    );
  }
}
