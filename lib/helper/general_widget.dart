import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

PreferredSizeWidget defaultAppBar(
    {required String title, required double elevation}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: redColorTheme,
      elevation: elevation,
      title: Text(
        title,
        style: TextStyle(
          color: silverColorTheme,
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}

PreferredSizeWidget defaultSearchBar({
  required String hint,
  required double elevation,
  required TabController tabController,
  required FocusNode searchNode,
}) {
  TextEditingController textEditingController;

  // int _currentTabIndex = tabController.index;

  TabBar tabBar = TabBar(
    // indicatorColor: Color(0xffB7A5A5),
    indicator: BoxDecoration(
      color: silverColorTheme,
      // borderRadius: BorderRadius.only(
      //   topLeft: _currentTabIndex == 1 ? Radius.circular(20) : Radius.zero,
      //   topRight: _currentTabIndex == 0 ? Radius.circular(20) : Radius.zero,
      // ),
    ),
    labelColor: Colors.black,
    controller: tabController,
    tabs: const [
      Tab(text: 'User'), // First tab
      Tab(text: 'Forum'), // Second tab
    ],
  );

  return PreferredSize(
    preferredSize: const Size.fromHeight(120.0),
    child: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: redColorTheme,
      elevation: elevation,
      title: Center(
        child: SizedBox(
          width: 320,
          height: 32,
          child: TextFormField(
            focusNode: searchNode,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: SvgPicture.asset(
                  'assets/search_icon.svg',
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 12.0,
                color: redColorTheme,
              ),
              contentPadding: const EdgeInsets.symmetric(
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
                ),
              ),
            ),
            onTap: () {
              // FocusScope.of(context).requestFocus(searchNode);
            },
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: tabBar.preferredSize,
        child: Container(
          color: const Color(0xffB7A5A5),
          child: tabBar,
        ),
      ),
    ),
  );
}
