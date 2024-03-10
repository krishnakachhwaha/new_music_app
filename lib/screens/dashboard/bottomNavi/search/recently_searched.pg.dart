import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/screens/dashboard/bottomNavi/home/home_pg.dart';
import 'package:music_app/screens/dashboard/bottomNavi/search/search_pg.dart';
import 'package:music_app/widgets/usefull_icon_button/heartIcon.dart';

import '../../../../Bloc/theme_bloc.dart';

class recently_searched extends StatefulWidget {
  const recently_searched({super.key});

  @override
  State<recently_searched> createState() => _recently_searchedState();
}

class _recently_searchedState extends State<recently_searched> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.grey.shade900
          : Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Padding(
              padding: const EdgeInsets.only(right: 400),
              child: BackButton(onPressed: () {
                //////pressed
                log('looool');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home_pg(),
                    ));
              }),
            ),
            SizedBox(height: 10.h),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Song Request',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.sp),
                      borderSide: BorderSide(
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.black,
                      )),
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    size: 20.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.sp),
                      borderSide: BorderSide(
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.black,
                      ))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Slidable(
                    endActionPane: ActionPane(
                      //openThreshold: 1,
                      extentRatio: 1,
                      motion: StretchMotion(),
                      children: [
                        SlidableAction(
                            label: 'like',
                            backgroundColor: Colors.red.shade600,
                            onPressed: (context) {},
                            icon: FontAwesomeIcons.heart),
                        SlidableAction(
                          label: 'add',
                          backgroundColor: Colors.blue.shade600,
                          onPressed: (context) {},
                          icon: FontAwesomeIcons.add,
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(bottom: 5, left: 5),
                      leading: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12),
                          )),
                      title: Text('song name'),
                      trailing: Icon(
                        FontAwesomeIcons.x,
                        size: 13,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
