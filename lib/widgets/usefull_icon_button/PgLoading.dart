import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PgLoader extends StatefulWidget {
  const PgLoader({super.key});

  @override
  State<PgLoader> createState() => _PgLoaderState();
}

class _PgLoaderState extends State<PgLoader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 180.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade300),
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 25.h,
                  width: 280.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200),
                ),
                SizedBox(height: 15.h),
              ],
            );
          },
        ),
      ).animate().fade(duration: 2.seconds),
    ));
  }
}
