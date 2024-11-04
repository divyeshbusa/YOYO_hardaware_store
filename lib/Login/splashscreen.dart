import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoyo_harware_store/Login/login.dart';
import 'package:yoyo_harware_store/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";
  var isLogin = false;

  @override
  void initState() {
    super.initState();
    isLogin = false;
    print("::::::DATABASE INITIALIZATION:::::::");

    print("::::::DATABASE INITIALIZATION COMPLETE:::::::");
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 148, 77, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(242, 120, 130, 1)),
                ),
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      image: AssetImage(
                          "assets/images/splashscreen_animation.gif"),
                      fit: BoxFit.contain),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();

    var isLogin = sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 3), () {
      if (isLogin != null && isLogin == true) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Homepage(),
          ),
        );
        print("nextScreen:::::DASHBOARD");
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
        print("nextScreen:::::LoginPage");
      }
    });
  }
}
