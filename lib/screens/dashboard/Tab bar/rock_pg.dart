import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/conponents/arrData.dart';
import 'package:music_app/screens/play%20screen/play_pg.dart';
import 'package:music_app/widgets/usefull_icon_button/heartIcon.dart';

import '../../../Bloc/theme_bloc.dart';

class rock extends StatefulWidget {
  const rock({Key? key}) : super(key: key);

  @override
  State<rock> createState() => _rockState();
}

class _rockState extends State<rock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.black
            : Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Data.arrNames.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 15.sp),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      String img =
                          Data.arrNames[index]['arrImgNames'].toString();
                      String imgName = Data.arrNames[index]['arrTitleNames'];
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => play_pg(
                                    img: img,
                                    imgName: imgName,
                                  )));
                    },
                    child: ListTile(
                        leading: Image.asset(
                            '${Data.arrNames[index]['arrImgNames']}',
                            height: 35.h),
                        title: Text(
                          '${Data.arrNames[index]['arrTitleNames']}',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          '${Data.arrNames[index]['arrSubNames']}',
                        ),
                        trailing: heartIcon()),
                  );
                },
              ),
            )
          ],
        ));
  }
}
