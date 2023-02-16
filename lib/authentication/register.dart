import 'package:alumni_forum_app/authentication/sign_in.dart';
import 'package:alumni_forum_app/helper/custom_theme.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var jabatan = [
    "Teknik dan Operator Mesin",
    "System Analyst",
    "Tenaga Pendidik"
  ];

  var _jabatanSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grayColorTheme,
        body: Center(
            child: Form(
          child: Padding(
            padding: EdgeInsets.only(left: 31, right: 31),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Nama Lengkap',
                        hintStyle: TextStyle(
                            fontSize: 12.0, color: Colors.blueGrey[100]),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        label: Text(
                          'Nama Lengkap',
                          style: TextStyle(
                              color: redColorTheme,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        focusColor: redColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Email',
                        hintStyle: TextStyle(
                            fontSize: 12.0, color: Colors.blueGrey[100]),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        label: Text(
                          'Email',
                          style: TextStyle(
                              color: redColorTheme,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        focusColor: redColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InputDecorator(
                    isEmpty: _jabatanSelectedValue == '',
                    decoration: InputDecoration(
                        // hintText: 'Masukkan Jabatan',
                        // hintStyle: TextStyle(
                        //     fontSize: 12.0, color: Colors.blueGrey[100]),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        label: Text(
                          'Jabatan',
                          style: TextStyle(
                              color: redColorTheme,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        focusColor: redColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1))),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _jabatanSelectedValue,
                        isDense: true,
                        onChanged: (newValue) {
                          setState(() {
                            _jabatanSelectedValue = newValue;
                            // state.didChange(newValue);
                          });
                        },
                        items: jabatan.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Instansi',
                        hintStyle: TextStyle(
                            fontSize: 12.0, color: Colors.blueGrey[100]),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        label: Text(
                          'Instansi',
                          style: TextStyle(
                              color: redColorTheme,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        focusColor: redColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Kata Sandi',
                        hintStyle: TextStyle(
                            fontSize: 12.0, color: Colors.blueGrey[100]),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        label: Text(
                          'Kata Sandi',
                          style: TextStyle(
                              color: redColorTheme,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        focusColor: redColorTheme,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: redColorTheme, width: 1))),
                  ),
                  SizedBox(
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
                      'Register',
                      style: TextStyle(
                          color: silverColorTheme,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => SignInPage())));
                    },
                    child: Text(
                      'Sudah memiliki akun? klik di sini',
                      style: TextStyle(color: redColorTheme, fontSize: 13),
                    ),
                  )
                ]),
          ),
        )));
  }
}
