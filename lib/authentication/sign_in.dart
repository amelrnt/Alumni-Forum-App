import 'package:alumni_forum_app/authentication/register.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grayColorTheme,
        body: Center(
            child: Form(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 31,
              right: 31,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueGrey[100],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 2,
                      ),
                      label: Text(
                        'Email',
                        style: TextStyle(
                          color: redColorTheme,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      focusColor: redColorTheme,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Kata Sandi',
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueGrey[100],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 2,
                      ),
                      label: Text(
                        'Kata Sandi',
                        style: TextStyle(
                          color: redColorTheme,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      focusColor: redColorTheme,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: redColorTheme,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      // if (_formKey.currentState!.validate()) {
                      //   // Process data.
                      // }
                    },
                    // style: ButtonStyle(
                    //     backgroundColor:
                    //         MaterialStatePropertyAll<Color>(redColorTheme)),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: silverColorTheme,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Belum memiliki akun? klik di sini',
                      style: TextStyle(
                        color: redColorTheme,
                        fontSize: 13,
                      ),
                    ),
                  )
                ]),
          ),
        )));
  }
}
