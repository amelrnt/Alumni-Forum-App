import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPostWidget extends StatefulWidget {
  const AddPostWidget({super.key});

  @override
  State<AddPostWidget> createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  bool isDropdownOpen = false; // Add this variable

  List list = [
    'Personal',
    'Alumni-Tefa (Forum)',
    'Alumni Yang Suka Golf (Forum)'
  ];

  String dropdownValue = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              // Container for location, camera, and gallery
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Container(
                  color: silverColorTheme,
                  height: 140,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/apple_example.png',
                            width: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Container for bottom space
              Padding(
                padding: const EdgeInsets.only(top: 490),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: grayColorTheme,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 109, 109, 109),
                        offset: Offset(-10, 0),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                      ),
                    ],
                  ),
                ),
              ),
              // Container for textfield
              Container(
                decoration: BoxDecoration(
                  color: grayColorTheme,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 109, 109, 109),
                      offset: Offset(5, 5),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Profile Clicked!",
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
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
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        "Yusril",
                                        style: TextStyle(
                                          color: redColorTheme,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: darkRedColorTheme,
                                ),
                                child: DropdownButton(
                                  isExpanded: true,
                                  dropdownColor: redColorTheme,
                                  value: dropdownValue,
                                  icon: Icon(
                                    Icons.arrow_downward,
                                    color: silverColorTheme,
                                  ),
                                  elevation: 16,
                                  style: TextStyle(
                                    color: darkRedColorTheme,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  onTap: () {
                                    // Set the flag to indicate the dropdown is open
                                    setState(() {
                                      isDropdownOpen = true;
                                    });
                                  },
                                  items: list.map((value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Text(
                                          value,
                                          overflow: isDropdownOpen
                                              ? (dropdownValue == value
                                                  ? TextOverflow.ellipsis
                                                  : null)
                                              : null,
                                          style: TextStyle(
                                            color: silverColorTheme,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          // color: silverColorTheme,
                          height: 200,
                          child: Expanded(
                            flex: 1,
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              expands: true,
                              maxLines: null,
                              minLines: null,
                              decoration: const InputDecoration(
                                hintText: "Ketik postingan anda...",
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: darkRedColorTheme,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
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
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: SvgPicture.asset(
            'assets/send_icon.svg',
          ),
        ),
      ),
    );
  }
}
