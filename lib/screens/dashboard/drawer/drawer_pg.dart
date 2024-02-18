import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/Bloc/theme_bloc.dart';
import 'package:music_app/screens/dashboard/drawer/personalData.dart';

import '../../../bloc/theme_events.dart';

class drawer_pg extends StatefulWidget {
  const drawer_pg({Key? key}) : super(key: key);
  @override
  State<drawer_pg> createState() => _drawer_pgState();
}

class _drawer_pgState extends State<drawer_pg> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> arrMap = [
      {
        'arrBoxcolor': Colors.yellow.shade100,
        'arrIcon': FontAwesomeIcons.user,
        'arrIconColor': Colors.yellow.shade700,
        'arrtitle': 'Personal Data',
      },
      {
        'arrBoxcolor': Colors.blue.shade100,
        'arrIcon': Icons.settings,
        'arrIconColor': Colors.blue.shade700,
        'arrtitle': 'Setting'
      },
      {
        'arrBoxcolor': Colors.green.shade100,
        'arrIcon': FontAwesomeIcons.clock,
        'arrIconColor': Colors.green.shade700,
        'arrtitle': 'Purchase History'
      },
      {
        'arrBoxcolor': Colors.orange.shade100,
        'arrIcon': FontAwesomeIcons.questionCircle,
        'arrIconColor': Colors.orange.shade700,
        'arrtitle': 'Help & Support'
      },
      {
        'arrBoxcolor': Colors.indigo.shade100,
        'arrIcon': FontAwesomeIcons.signOut,
        'arrIconColor': Colors.indigo.shade700,
        'arrtitle': 'Logout',
      },
    ];
    return Scaffold(
        backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.grey.shade900
            : Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(FontAwesomeIcons.x,
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                          size: 20)),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  CircleAvatar(
                      radius: 25.sp,
                      child: Icon(FontAwesomeIcons.userAstronaut, size: 25.sp)),
                  SizedBox(width: 10.w),
                  Column(
                    children: [
                      Text(
                        'Krishna Kachhwaha',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'krishnakac.....gmail.com',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                '____________________________________________________',
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: arrMap.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => arrMap[index]['onTap']));
                    },
                    leading: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: arrMap[index]['arrBoxcolor'],
                      ),
                      child: Icon(arrMap[index]['arrIcon'],
                          color: arrMap[index]['arrIconColor'], size: 20.sp),
                    ),
                    title: Text(
                      '${arrMap[index]['arrtitle']}',
                      style: TextStyle(fontSize: 16),
                    ),
                  );
                },
              )),
              ListTile(
                  leading: Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red.shade100),
                    child: Icon(FontAwesomeIcons.sun,
                        color: Colors.red.shade700, size: 20.sp),
                  ),
                  title: Text(
                    'Day Mode',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Switch(
                    value: context.read<ThemeBloc>().state == ThemeMode.dark,
                    onChanged: (value) {
                      context.read<ThemeBloc>().add(ThemeChanged(value));
                    },
                  ))
            ],
          ),
        ));
  }
}
