import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:music_app/screens/dashboard/bottomNavi/home/home_pg.dart';
import 'package:music_app/screens/dashboard/bottomNavi/premium/premium_pg.dart';
import '../../../../Bloc/theme_bloc.dart';
import '../../../../themeData/app_theme_data.dart';
import '../library/library_pg.dart';
import '../search/search_pg.dart';

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
              home: Example());
        },
      );
    }),
  ));
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    home_pg(),
    search_pg(),
    library_pg(),
    premium_pg(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.grey.shade800,
        hoverColor: Colors.grey[200]!,
        gap: 8,
        tabBackgroundGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey.shade900, Colors.grey.shade600]),
        activeColor: Colors.white,
        iconSize: 20,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        duration: Duration(milliseconds: 300),
        color: Colors.white,
        tabs: [
          GButton(
            icon: FontAwesomeIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: FontAwesomeIcons.search,
            text: 'Search',
          ),
          GButton(
            icon: FontAwesomeIcons.bookOpen,
            text: 'Library',
          ),
          GButton(
            icon: FontAwesomeIcons.crown,
            text: 'Premium',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
