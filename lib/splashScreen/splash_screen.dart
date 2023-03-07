import 'dart:async';

import 'package:flutter/material.dart';
import 'package:superfood_app/authentication/auth_screen.dart';
import 'package:superfood_app/global/global.dart';
import 'package:superfood_app/mainScreens/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer()
  {


    Timer(const Duration(seconds: 1), () async {

      //satıcı giriş yaptıysa homescreen açılır yapmadıysa authscreen açılır.

      if(firebaseAuth.currentUser != null)
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const HomeScreen()));
      }
      else {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const AuthScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/splash.png"),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
