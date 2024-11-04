import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:yoyo_harware_store/Login/registration_form.dart';
import 'package:yoyo_harware_store/Components/my_button.dart';
import 'package:yoyo_harware_store/Login/splashscreen.dart';
import 'package:yoyo_harware_store/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // MyDatabase db = MyDatabase();
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isGetData = true;

  @override
  void initState() {


    setState(() {
      super.initState();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                      child: Image.asset('assets/images/workshop.png'),
                      height: 230),
                  SizedBox(height: 20),
                  const Text(
                    'YOYO HARDWARE STORE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Make it ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '" SIMPLE "',
                        style: TextStyle(
                          color: Color.fromRGBO(250, 148, 77, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter username.";
                        } else {
                          return null;
                        }
                      },
                      controller: usernameController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(250, 148, 77, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "please enter password.";
                        } else {
                          return null;
                        }
                      },
                      controller: passwordController,
                      obscureText: hidePassword,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(237, 192, 80, 1),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(67, 89, 101, 1),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          child: Icon(
                            CupertinoIcons.eye,
                            color:
                                hidePassword ? Colors.black : Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => ForgotScreen(true),
                      //     ),
                      //   );
                      // },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Color.fromRGBO(250, 148, 77, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  MyButton(
                    name: 'Sign in',
                    fontsize: 20,
                    ContainerColor: Color.fromRGBO(250, 148, 77, 1),
                    padding: 20,
                      onTap: () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        print("::::::::::::::::::::::::before login:::::::");
                        prefs.setBool(SplashScreenState.KEYLOGIN, true);
                        print("::::::::::::::::::::::::After login:::::::");
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ),
                        );
                      },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New User ?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Registration_form(),
                            ),
                          );
                        },
                        child: Text(
                          ' Register Now',
                          style: TextStyle(
                              color: Color.fromRGBO(250, 148, 77, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialogForInvalidLogin(BuildContext context) {
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      backgroundColor: Color.fromRGBO(250, 148, 77, 1),
      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      title: Text(
        "",
        style: TextStyle(color: Colors.white),
      ),
      content: Text("INVALID USERNAME OR PASSWORD.",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogForGoogleLogin(BuildContext context) {
    AlertDialog alert = AlertDialog(
        backgroundColor: Colors.white,
        shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        title: Text(
          "G-mail Login",
          style: TextStyle(color: Colors.black),
        ),
        content: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue.shade900),
                    borderRadius: BorderRadius.circular(10)),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/google.png", width: 20),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'abc@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // GmailLogin(Gmail: 'dk@gmail.com',Password: 'passwd'),
            // SizedBox(height: 10),
            // InkWell(
            //   onTap: () async {
            //     print("::::::::::::::::before model::::::::::::::::::::");
            //     UserModel? modelU = await db.getLoginDetail(
            //       'dk@gmail.com',
            //       'passwd',
            //     );
            //     print(
            //         "::::::::::::::::after model::::::::::::::::::::${modelU!.UserName}");
            //
            //     final SharedPreferences prefs =
            //         await SharedPreferences.getInstance();
            //     await prefs.setInt('UserID', modelU!.UserID as int);
            //     await prefs.setString('UserName', modelU.UserName.toString());
            //     await prefs.setString('Email', modelU.Email.toString());
            //     await prefs.setString('Phone', modelU.Phone.toString());
            //     await prefs.setString('UserType', modelU.UserType.toString());
            //     await prefs.setString('UserImage', modelU.UserImage.toString());
            //
            //     prefs.setBool(SplashScreenState.KEYLOGIN, true);
            //
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) =>
            //             UserwiseApartmentList(id: modelU.UserID),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         border: Border.all(width: 2, color: Colors.blue.shade900),
            //         borderRadius: BorderRadius.circular(10)),
            //     width: double.maxFinite,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Image.asset("assets/images/google.png", width: 20),
            //         SizedBox(
            //           width: 25,
            //         ),
            //         Text(
            //           'dk@gmail.com',
            //           style: TextStyle(
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black,
            //               fontSize: 18),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            // InkWell(
            //   onTap: () async {
            //     print("::::::::::::::::before model::::::::::::::::::::");
            //     UserModel? modelU = await db.getLoginDetail(
            //       'nk@gmail.com',
            //       'passwd',
            //     );
            //     print(
            //         "::::::::::::::::after model::::::::::::::::::::${modelU!.UserName}");
            //
            //     final SharedPreferences prefs =
            //         await SharedPreferences.getInstance();
            //     await prefs.setInt('UserID', modelU!.UserID as int);
            //     await prefs.setString('UserName', modelU.UserName.toString());
            //     await prefs.setString('Email', modelU.Email.toString());
            //     await prefs.setString('Phone', modelU.Phone.toString());
            //     await prefs.setString('UserType', modelU.UserType.toString());
            //     await prefs.setString('UserImage', modelU.UserImage.toString());
            //
            //     prefs.setBool(SplashScreenState.KEYLOGIN, true);
            //
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) =>
            //             UserwiseApartmentList(id: modelU.UserID),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         border: Border.all(width: 2, color: Colors.blue.shade900),
            //         borderRadius: BorderRadius.circular(10)),
            //     width: double.maxFinite,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Image.asset("assets/images/google.png", width: 20),
            //         SizedBox(
            //           width: 25,
            //         ),
            //         Text(
            //           'nk@gmail.com',
            //           style: TextStyle(
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black,
            //               fontSize: 18),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            // InkWell(
            //   onTap: () async {
            //     print("::::::::::::::::before model::::::::::::::::::::");
            //     UserModel? modelU = await db.getLoginDetail(
            //       'kp@gmail.com',
            //       'passwd',
            //     );
            //     print(
            //         "::::::::::::::::after model::::::::::::::::::::${modelU!.UserName}");
            //
            //     final SharedPreferences prefs =
            //     await SharedPreferences.getInstance();
            //     await prefs.setInt('UserID', modelU!.UserID as int);
            //     await prefs.setString('UserName', modelU.UserName.toString());
            //     await prefs.setString('Email', modelU.Email.toString());
            //     await prefs.setString('Phone', modelU.Phone.toString());
            //     await prefs.setString('UserType', modelU.UserType.toString());
            //     await prefs.setString('UserImage', modelU.UserImage.toString());
            //
            //     prefs.setBool(SplashScreenState.KEYLOGIN, true);
            //
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) =>
            //             UserwiseApartmentList(id: modelU.UserID),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         border: Border.all(width: 2, color: Colors.blue.shade900),
            //         borderRadius: BorderRadius.circular(10)),
            //     width: double.maxFinite,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Image.asset("assets/images/google.png", width: 20),
            //         SizedBox(
            //           width: 25,
            //         ),
            //         Text(
            //           'kp@gmail.com',
            //           style: TextStyle(
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black,
            //               fontSize: 18),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
            // InkWell(
            //   onTap: () async {
            //     print("::::::::::::::::before model::::::::::::::::::::");
            //     UserModel? modelU = await db.getLoginDetail(
            //       'rv@gmail.com',
            //       'passwd',
            //     );
            //     print(
            //         "::::::::::::::::after model::::::::::::::::::::${modelU!.UserName}");
            //
            //     final SharedPreferences prefs =
            //     await SharedPreferences.getInstance();
            //     await prefs.setInt('UserID', modelU!.UserID as int);
            //     await prefs.setString('UserName', modelU.UserName.toString());
            //     await prefs.setString('Email', modelU.Email.toString());
            //     await prefs.setString('Phone', modelU.Phone.toString());
            //     await prefs.setString('UserType', modelU.UserType.toString());
            //     await prefs.setString('UserImage', modelU.UserImage.toString());
            //
            //     prefs.setBool(SplashScreenState.KEYLOGIN, true);
            //
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) =>
            //             UserwiseApartmentList(id: modelU.UserID),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         border: Border.all(width: 2, color: Colors.blue.shade900),
            //         borderRadius: BorderRadius.circular(10)),
            //     width: double.maxFinite,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           width: 10,
            //         ),
            //         Image.asset("assets/images/google.png", width: 20),
            //         SizedBox(
            //           width: 25,
            //         ),
            //         Text(
            //           'rv@gmail.com',
            //           style: TextStyle(
            //               fontWeight: FontWeight.w500,
            //               color: Colors.black,
            //               fontSize: 18),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 10),
          ],
        ));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

// Future<UserModel> userDetail() async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//   UserModel modelU = UserModel(
//       UserID1: prefs.getInt('UserID') as int,
//       UserName1: prefs.getString('UserName').toString(),
//       Phone1: prefs.getString('Phone'),
//       Email1: prefs.getString('Email').toString(),
//       UserType1: prefs.getString('UserType').toString(),
//       UserImage1: prefs.getString('UserImage').toString());
//   modelU.UserID = prefs.getInt('UserID');
//
//   return modelU;
// }
}
