import 'dart:async';
// import 'package:alumni_forum_app/authentication/sign_in.dart';
import 'package:alumni_forum_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'helper/custom_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const HomePage())));
      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: ((context) => SignInPage())));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColorTheme,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 88,
          // ),
          Text(
            "Forum Alumni Apps".toUpperCase(),
            style: TextStyle(
                color: silverColorTheme,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "Teknik Mesin",
            style: TextStyle(
                color: silverColorTheme,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 81,
          ),
          SvgPicture.asset(
            'assets/app_logo.svg',
          ),
          SizedBox(
            height: 150,
          ),
          Text(
            "Copyright Teknik Mesin \u00a9 2022",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: silverColorTheme),
          )
        ],
      )),
    );
  }
}
