import 'dart:async';
import 'package:music_app/screens/dashboard/bottomNavi/home/home_pg.dart';
import 'package:music_app/user_onboarding/login/login_pg.dart';
import 'package:music_app/user_onboarding/onboarding_Info/onboarding_pg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      check();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Loda lasan'),
            Image.network(
                'https://th.bing.com/th/id/R.1760b69c31c0544227981d4d99b489de?rik=Zmuq4o1Hb8Ki4g&riu=http%3a%2f%2fgharbaithebazar.com%2fwp-content%2fuploads%2f2015%2f11%2fgarlic_2.jpg&ehk=ZN6N3NIrBRMsaw1MrJmEdhXVA4L3gzhG8fYCJWhSkXs%3d&risl=&pid=ImgRaw&r=0')
          ],
        ),
      ),
    );
  }

  check() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final _check = pref.getBool("IsLogging");

    if (_check != null) {
      if (_check) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => home_pg()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => login_pg()),
        );
      }
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onboarding()),
      );
    }
  }
}
