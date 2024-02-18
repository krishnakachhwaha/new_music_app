import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../../../Bloc/theme_bloc.dart';
import '../../../../widgets/BottomSheets/PymentBottomSheet.dart';

class prem_FamlyPLan extends StatefulWidget {
  const prem_FamlyPLan({super.key});

  @override
  State<prem_FamlyPLan> createState() => _prem_FamlyPLanState();
}

class _prem_FamlyPLanState extends State<prem_FamlyPLan> {
  @override
  var arrMonthly = [
    '1 Month',
    '3 Month',
    '6 Month',
    '12 Month',
  ];
  var arrPrice = [
    '₹99/- only',
    '₹199/- only',
    '₹399/- only',
    '₹599/- only',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BackButton(),
            SizedBox(height: 10.h),
            Text(
              '👑 3 days free trial with any plan',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: context.read<ThemeBloc>().state == ThemeMode.dark
                    ? Colors.blueGrey.shade700
                    : Colors.blueGrey.shade300,
              ),
              width: double.infinity,
              height: 220.h,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: context.read<ThemeBloc>().state ==
                                    ThemeMode.dark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20.sp,
                            fontStyle: FontStyle.italic),
                        children: <TextSpan>[
                          TextSpan(text: 'Go'),
                          TextSpan(
                              text: ' Pro ',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 33.sp,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.normal)),
                          TextSpan(text: '& Choose Family Plan'),
                        ]),
                  ),
                  Lottie.network(
                    "https://lottie.host/1e123fe9-7e0f-471c-9dc7-d158da73004a/oWbtCudjep.json",
                    height: 179,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: arrMonthly.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      width: double.infinity,
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.sp),
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.blueGrey.shade700
                                  : Colors.blueGrey.shade300),
                      child: ListTile(
                          title: Text(
                            arrMonthly[index],
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            arrPrice[index],
                            style: TextStyle(
                                color: context.read<ThemeBloc>().state ==
                                        ThemeMode.dark
                                    ? Colors.white54
                                    : Colors.black87),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              FontAwesomeIcons.circle,
                            ),
                            onPressed: (() {
                              showModalBottomSheet(
                                backgroundColor:
                                    context.read<ThemeBloc>().state ==
                                            ThemeMode.dark
                                        ? Colors.black
                                        : Colors.grey.shade300,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.sp),
                                        topRight: Radius.circular(15.sp))),
                                barrierColor: Colors.white24,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                      height: 140.h,
                                      child: PymentBottomSheet());
                                },
                              );
                            }),
                          )),
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
