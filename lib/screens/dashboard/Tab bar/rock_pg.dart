import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class rock extends StatefulWidget {
  const rock({Key? key}) : super(key: key);

  @override
  State<rock> createState() => _rockState();
}

class _rockState extends State<rock> {
  var arrNames = [
    {
      'arrTitleNames': 'Im Good [Blue]',
      'arrSubNames': 'David Guetta & Bebe Rexha',
      'arrImgNames': 'assets/images/song1.jpeg',
    },
    {
      'arrTitleNames': 'Under the Influence',
      'arrSubNames': 'Chris Brown',
      'arrImgNames': 'assets/images/song2.jpeg',
    },
    {
      'arrTitleNames': 'Forget Me',
      'arrSubNames': 'Lewis Capaldi',
      'arrImgNames': 'assets/images/song3.jpeg',
    },
    {
      'arrTitleNames': 'Im Good [Blue]',
      'arrSubNames': 'David Guetta & Bebe Rexha',
      'arrImgNames': 'assets/images/song4.jpeg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: arrNames.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 15.sp),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset('${arrNames[index]['arrImgNames']}',
                        height: 35.h),
                    title: Text(
                      '${arrNames[index]['arrTitleNames']}',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      '${arrNames[index]['arrSubNames']}',
                      style: TextStyle(color: Colors.white60),
                    ),
                    trailing: IconButton(
                        color: Colors.yellow,
                        onPressed: (() {
                          setState(() {
                            Icon:
                            FontAwesomeIcons.heart;
                          });
                        }),
                        icon: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                        )),
                  );
                },
              ),
            )
          ],
        ));
  }
}
