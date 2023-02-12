import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  DefaultAppBar({super.key, this.appBarTitle});

  var appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: redColorTheme,
      title: Text(
        appBarTitle,
        style: TextStyle(
            color: silverColorTheme, fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
