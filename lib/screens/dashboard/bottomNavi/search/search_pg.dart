import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/screens/dashboard/bottomNavi/search/recently_searched.pg.dart';
import 'package:music_app/widgets/usefull_icon_button/staggered.dart';

import '../../../../Bloc/theme_bloc.dart';

class search_pg extends StatefulWidget {
  const search_pg({Key? key}) : super(key: key);

  @override
  State<search_pg> createState() => _search_pgState();
}

class _search_pgState extends State<search_pg> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 35.sp),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.search),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => recently_searched()));
                    },
                  )
                ],
              ),
              Text(
                'what would you like to listen today?',
                style: TextStyle(fontSize: 18.sp),
              ),

              SizedBox(height: 30.h),
              Text('Recently played', style: TextStyle(fontSize: 23.sp)),
              SizedBox(
                  height: 110,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                  )),
              Text('Most searched songs', style: TextStyle(fontSize: 23.sp)),
              SizedBox(
                  height: 110,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    ),
                  )),
              Text('Artists', style: TextStyle(fontSize: 23.sp)),
              SizedBox(
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  )),
              // Text('Playlists for you',
              //     style: TextStyle(fontSize: 25.sp, color: Colors.white)),
              SizedBox(height: 25.h),
              staggered(),
            ],
          ),
        ),
      ),
    );
  }
}
