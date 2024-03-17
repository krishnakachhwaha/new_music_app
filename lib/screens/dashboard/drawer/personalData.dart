import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/widgets/usefull_icon_button/back_button.dart';

import '../../../Bloc/theme_bloc.dart';

class personalData extends StatefulWidget {
  const personalData({Key? key}) : super(key: key);

  @override
  State<personalData> createState() => _personalDataState();
}

class _personalDataState extends State<personalData> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              back_button(),
              SizedBox(height: 20.h),
              Text(
                'Edit Profile',
                style: TextStyle(
                    fontSize: 28.sp,
                    color: context.read<ThemeBloc>().state == ThemeMode.dark
                        ? Colors.white
                        : Colors.black),
              ),
              SizedBox(height: 10.h),
              Center(
                  child: Stack(
                children: [
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white10
                            : Colors.black12,
                        boxShadow: [
                          BoxShadow(
                              color: context.read<ThemeBloc>().state ==
                                      ThemeMode.dark
                                  ? Colors.white38
                                  : Colors.black12,
                              offset: Offset(5.sp, 10.sp),
                              blurRadius: 10.sp,
                              spreadRadius: 2.sp)
                        ],
                        border: Border.all(
                            width: 2.w,
                            color: context.read<ThemeBloc>().state ==
                                    ThemeMode.dark
                                ? Colors.white
                                : Colors.black),
                        shape: BoxShape.circle),
                    child: Icon(
                      FontAwesomeIcons.userAstronaut,
                      color: context.read<ThemeBloc>().state == ThemeMode.dark
                          ? Colors.white
                          : Colors.black,
                      size: 60.sp,
                    ),
                  ),
                  Positioned(
                      top: 70,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2.w,
                              color: context.read<ThemeBloc>().state ==
                                      ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        child: Icon(
                          FontAwesomeIcons.pencil,
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black,
                          size: 13.sp,
                        ),
                      ))
                ],
              )),
              SizedBox(height: 40.h),
              buildTextField("Full Name", "Krishna Kachhwaha", false),
              buildTextField("E-mail", "krishnakachhwaha04@gmail.com", false),
              buildTextField("Password", "*********", true),
              buildTextField("Location", "Jodhpur, Rajasthan", false),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 2.w, color: Colors.purpleAccent),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'CANCEL',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            letterSpacing: 7.sp,
                            color: context.read<ThemeBloc>().state ==
                                    ThemeMode.dark
                                ? Colors.white
                                : Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.purpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.sp),
                              side: BorderSide(
                                  width: 2.w, color: Colors.purpleAccent))),
                      onPressed: () {},
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            letterSpacing: 7.sp,
                            color: context.read<ThemeBloc>().state ==
                                    ThemeMode.dark
                                ? Colors.white
                                : Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(FontAwesomeIcons.solidEye,
                      color: context.read<ThemeBloc>().state == ThemeMode.dark
                          ? Colors.white
                          : Colors.black,
                      size: 15))
              : null,
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 18,
              color: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.grey.shade400
                  : Colors.black),
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 15,
              color: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white
                  : Colors.black,
              fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.white
                      : Colors.black)),
        ),
      ),
    );
  }
}
