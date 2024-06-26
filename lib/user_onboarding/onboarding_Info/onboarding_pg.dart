import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/screens/dashboard/bottomNavi/home/home_screen.dart';
import 'package:music_app/user_onboarding/login/login_pg.dart';
import '../../Bloc/theme_bloc.dart';
import '../../themeData/app_theme_data.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  List onboardingData = [
    {
      "image": 'assets/lottie/onboarding1.json',
      "title": 'Your song goes\nwherever you go',
      "description":
          '   With offline mode, play your\nsongs wherever and whenever\n                    you want'
    },
    {
      "image": 'assets/lottie/onboarding2.json',
      "title": 'Explore other\n      worlds',
      "description":
          '       More than 1500 artist to\nidentify themselves and create\n                their palylists'
    },
    {
      "image": 'assets/lottie/onboarding3.json',
      "title": 'Let heartbeat start\'s',
      "description": 'Wish you all the best and\n            just go to it!'
    },
  ];
  PageController pageController = PageController();

  continueMethod() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login_pg()));
  }

  int currentPage = 0;

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade100,
        actions: [
          TextButton(
              onPressed: continueMethod,
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onboardingData.length,
            onPageChanged: onChanged,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Lottie.asset(onboardingData[index]['image'], height: 380),
                  Text(
                    onboardingData[index]['title'],
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    onboardingData[index]['description'],
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (currentPage == (onboardingData.length - 1))
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder()),
                        onPressed: continueMethod,
                        child: const Text(
                          'S.T.A.R.T',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(onboardingData.length,
                            (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            height: 10.h,
                            width: (index == currentPage) ? 20.w : 10.w,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: (index == currentPage)
                                    ? Colors.deepOrange
                                    : Colors.grey),
                          );
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
