import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/themeData/app_theme_data.dart';
import 'package:music_app/user_onboarding/splash_screen.dart';

import 'Bloc/theme_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: ScreenUtilInit(builder: (context, child) {
      return BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'GNav',
            theme: lightTheme,
            themeMode: state,
            darkTheme: darkTheme,
            home: SplashScreen(),
          );
        },
      );
    }),
  ));
}
