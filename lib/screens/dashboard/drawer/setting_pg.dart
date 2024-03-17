import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/widgets/usefull_icon_button/back_button.dart';

import '../../../Bloc/theme_bloc.dart';

class setting_pg extends StatefulWidget {
  const setting_pg({Key? key}) : super(key: key);

  @override
  State<setting_pg> createState() => _setting_pgState();
}

class _setting_pgState extends State<setting_pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h),
            back_button(),
            SizedBox(height: 20.h),
            Text(
              'Setting',
              style: TextStyle(
                  fontSize: 28.sp,
                  color: context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.white
                      : Colors.black),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.userLarge,
                  size: 20.sp,
                  color: Colors.purpleAccent,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: context.read<ThemeBloc>().state == ThemeMode.dark
                          ? Colors.white
                          : Colors.black),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              '_________________________________________________________________________________________',
              style: TextStyle(
                  fontSize: 8.sp,
                  color: context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.grey.shade400
                      : Colors.black),
            ),
            ListTileTheme(
              iconColor: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white70
                  : Colors.black54,
              textColor: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white70
                  : Colors.black87,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Content settings',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Social',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Language',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Privacy and security',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.volumeHigh,
                        size: 20.sp,
                        color: Colors.purpleAccent,
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: context.read<ThemeBloc>().state ==
                                    ThemeMode.dark
                                ? Colors.white
                                : Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '_______________________________________________________________________________',
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.grey.shade400
                            : Colors.black),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'News for you',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8.sp,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Account activiy',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8.sp,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Opportunity',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8.sp,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Center(
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2.w, color: Colors.purpleAccent)),
                  onPressed: () {},
                  child: Text(
                    'SIGN OUT',
                    style: TextStyle(
                        fontSize: 15.sp,
                        letterSpacing: 8.sp,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
