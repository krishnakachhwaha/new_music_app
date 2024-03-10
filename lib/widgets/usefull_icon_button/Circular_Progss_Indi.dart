import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CirlcularProgssIndi extends StatefulWidget {
  const CirlcularProgssIndi({super.key});

  @override
  State<CirlcularProgssIndi> createState() => _CirlcularProgssIndiState();
}

class _CirlcularProgssIndiState extends State<CirlcularProgssIndi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingCircle(
        color: Colors.white,
        size: 100.sp,
      ),
    );
  }
}
