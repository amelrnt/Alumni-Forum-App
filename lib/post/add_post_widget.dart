import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPostWidget extends StatefulWidget {
  const AddPostWidget({super.key});

  @override
  State<AddPostWidget> createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/profile_icon.svg",
                          color: redColorTheme,
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Yusril",
                          style: TextStyle(
                            color: redColorTheme,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          hintText: "Ketik postingan anda...",
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: grayColorTheme,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Send Floating Button Clicked!",
                ),
              ),
            );
          },
          backgroundColor: darkRedColorTheme,
          foregroundColor: grayColorTheme,
          child: SvgPicture.asset(
            'assets/send_icon.svg',
          ),
        ));
  }
}
