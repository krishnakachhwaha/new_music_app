import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../Bloc/theme_bloc.dart';

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
                  return Container(
                    child: Shimmer.fromColors(
                      baseColor:
                          context.read<ThemeBloc>().state == ThemeMode.dark
                              ? Colors.grey.shade800
                              : Colors.grey.shade300,
                      highlightColor:
                          context.read<ThemeBloc>().state == ThemeMode.dark
                              ? Colors.grey.shade700
                              : Colors.grey.shade100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 25.h,
                            width: 180.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: context.read<ThemeBloc>().state ==
                                        ThemeMode.dark
                                    ? Colors.grey.shade800
                                    : Colors.grey.shade300),
                          ),
                          SizedBox(height: 15.h),
                          Container(
                            height: 30.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: context.read<ThemeBloc>().state ==
                                        ThemeMode.dark
                                    ? Colors.grey.shade700
                                    : Colors.grey.shade200),
                          ),
                          SizedBox(height: 15.h),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
