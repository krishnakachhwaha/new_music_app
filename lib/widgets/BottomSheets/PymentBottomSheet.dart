import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Bloc/theme_bloc.dart';

class PymentBottomSheet extends StatefulWidget {
  const PymentBottomSheet({super.key});

  @override
  State<PymentBottomSheet> createState() => _PymentBottomSheetState();
}

class _PymentBottomSheetState extends State<PymentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: Icon(
              Icons.linear_scale,
              size: 30.sp,
              color: Colors.grey,
            )),
        Padding(
          padding: EdgeInsets.all(5.sp),
          child: SizedBox(
            height: 70.h,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp)),
              color: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white38
                  : Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 8, bottom: 5, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('1 Month',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text(
                          '₹99/- only',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade300),
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.sp))),
                        child: Text(
                          'PAY',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
