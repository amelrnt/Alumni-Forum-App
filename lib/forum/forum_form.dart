// import 'package:flutter/cupertino.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

class ForumForm extends StatefulWidget {
  const ForumForm({super.key});

  @override
  State<ForumForm> createState() => _ForumFormState();
}

class _ForumFormState extends State<ForumForm> {
  bool privateForum = false;
  bool canInvite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColorTheme,
        title: Text(
          "Form Forum",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CoverImageForum(),
              // Nama forum field
              NamaForumField(),
              // Deskripsi field text area
              DeskripsiFormField(),
              // Peraturan forum field
              PeraturanFormField(),
              // Ubah privasi forum switch
              ChangeForumPrivacy(
                switchValue: privateForum,
              ),
              ChangeForumAuthority(
                switchValue: canInvite,
              ),
              // Confirm and cancel button
              Padding(
                padding: EdgeInsets.only(
                  right: 50,
                  top: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //   content: Text("Batal button clicked"),
                        //   duration: Duration(milliseconds: 1500),
                        // ));
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Batal",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: redColorTheme),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 30)),
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(width: 2, color: redColorTheme)),
                          // foregroundColor:
                          //     MaterialStateProperty.all<Color>(grayColorTheme),
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(redColorTheme),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Simpan button clicked"),
                          duration: Duration(milliseconds: 1500),
                        ));
                      },
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: silverColorTheme),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 30)),
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(width: 2, color: redColorTheme)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(grayColorTheme),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(redColorTheme),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)))),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CoverImageForum extends StatelessWidget {
  const CoverImageForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // Cover image
        Image.asset(
          'assets/cover_forum.png',
          width: 450,
          color: redColorTheme,
          colorBlendMode: BlendMode.lighten,
          fit: BoxFit.fitWidth,
        ),
        // Button change image cover
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 330,
          ),
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Change cover image button clicked!"),
                duration: Duration(milliseconds: 1250),
              ));
            },
            child: CircleAvatar(
              child: Image.asset(
                'assets/cam_icon.png',
              ),
              radius: 15,
              backgroundColor: silverColorTheme,
            ),
          ),
        ),
        // Photo profile
        Stack(alignment: Alignment.bottomRight, children: [
          Container(
            margin: EdgeInsets.only(
              top: 80,
            ),
            child: CircleAvatar(
              child: Text(
                "AYSG",
                style: TextStyle(
                  color: silverColorTheme,
                ),
              ),
              radius: 40,
              backgroundColor: darkRedColorTheme,
            ),
          ),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Change profile picture button clicked!"),
                duration: Duration(milliseconds: 1250),
              ));
            },
            child: CircleAvatar(
              child: Image.asset(
                'assets/cam_icon.png',
              ),
              radius: 15,
              backgroundColor: silverColorTheme,
            ),
          )
        ])
      ],
    );
  }
}

class NamaForumField extends StatelessWidget {
  const NamaForumField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "Nama Forum",
              style: TextStyle(
                color: redColorTheme,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 320,
            height: 35,
            child: TextFormField(
              style: TextStyle(
                color: darkRedColorTheme,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Nama Forum",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: redColorTheme.withOpacity(0.4),
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
                        color: redColorTheme,
                        width: 1,
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class DeskripsiFormField extends StatelessWidget {
  const DeskripsiFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "Deskripsi",
              style: TextStyle(
                color: redColorTheme,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 320,
            child: TextFormField(
              style: TextStyle(
                color: darkRedColorTheme,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Deskripsi (Opsional)",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: redColorTheme.withOpacity(0.4),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  filled: true,
                  fillColor: grayColorTheme,
                  focusColor: grayColorTheme,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class PeraturanFormField extends StatelessWidget {
  const PeraturanFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "Peraturan Forum",
              style: TextStyle(
                color: redColorTheme,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 320,
            child: TextFormField(
              style: TextStyle(
                color: darkRedColorTheme,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Peraturan Forum (Opsional)",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: redColorTheme.withOpacity(0.4),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  filled: true,
                  fillColor: grayColorTheme,
                  focusColor: grayColorTheme,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: redColorTheme,
                        width: 1,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class ChangeForumPrivacy extends StatefulWidget {
  bool switchValue;
  ChangeForumPrivacy({super.key, this.switchValue = false});

  @override
  State<ChangeForumPrivacy> createState() => _ChangeForumPrivacyState();
}

class _ChangeForumPrivacyState extends State<ChangeForumPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            child: Text(
              "Ubah menjadi forum privat",
              style: TextStyle(
                  color: darkRedColorTheme,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Switch.adaptive(
              // thumb color (round icon)
              activeColor: grayColorTheme,
              activeTrackColor: redColorTheme,
              inactiveThumbColor: grayColorTheme,
              inactiveTrackColor: silverColorTheme,
              splashRadius: 50.0,
              // boolean variable value
              value: widget.switchValue,
              onChanged: (value) => setState(() => widget.switchValue = value))
        ],
      ),
    );
  }
}

class ChangeForumAuthority extends StatefulWidget {
  bool switchValue;
  ChangeForumAuthority({super.key, this.switchValue = false});

  @override
  State<ChangeForumAuthority> createState() => _ChangeForumAuthorityState();
}

class _ChangeForumAuthorityState extends State<ChangeForumAuthority> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            child: Text(
              "Hanya pemilik yang bisa mengundang pengguna lain",
              style: TextStyle(
                  color: darkRedColorTheme,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Switch.adaptive(
              // thumb color (round icon)
              activeColor: grayColorTheme,
              activeTrackColor: redColorTheme,
              inactiveThumbColor: grayColorTheme,
              inactiveTrackColor: silverColorTheme,
              splashRadius: 50.0,
              // boolean variable value
              value: widget.switchValue,
              onChanged: (value) => setState(() => widget.switchValue = value))
        ],
      ),
    );
  }
}
