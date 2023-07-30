import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

PreferredSizeWidget defaultAppBar({required String title}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      centerTitle: true,
      backgroundColor: redColorTheme,
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

PreferredSizeWidget defaultSearchBar({required String hint}) {
  TextEditingController textEditingController;

  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
        backgroundColor: redColorTheme,
        title: Center(
          child: SizedBox(
            width: 320,
            height: 32,
            child: TextFormField(
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
                  hintStyle: TextStyle(fontSize: 12.0, color: redColorTheme),
                  contentPadding: EdgeInsets.symmetric(
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
                      ))),
            ),
          ),
        )),
  );
}
