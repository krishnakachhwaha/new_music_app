import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class LikedSongs_pg extends StatefulWidget {
  const LikedSongs_pg({super.key});

  @override
  State<LikedSongs_pg> createState() => _LikedSongs_pgState();
}

class _LikedSongs_pgState extends State<LikedSongs_pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          toolbarHeight: 220.h,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/xyz.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.sp, right: 5.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(top: 60.sp),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    SizedBox(height: 150.h),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_down,
                              color: Colors.white,
                              size: 28.sp,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 25.sp,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
      body: Padding(
        padding: EdgeInsets.only(right: 5.sp, left: 5.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text('10\nliked songs',
                style: TextStyle(fontSize: 20.sp, color: Colors.white70)),
            SizedBox(height: 10.h),
            Container(
              height: 45.h,
              width: 130.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.add,
                    color: Colors.white,
                  ),
                  Text(
                    'ADD SONG',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 15.sp),
                  child: Slidable(
                    endActionPane:
                        ActionPane(motion: StretchMotion(), children: [
                      SlidableAction(
                        label: 'remove',
                        backgroundColor: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        onPressed: (context) {},
                        icon: FontAwesomeIcons.boxArchive,
                      ),
                    ]),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            color: Colors.grey.shade900),
                        height: 60.h,
                        child: ListTile(
                          leading: Image.asset('assets/images/song1.jpeg',
                              height: 33.h),
                          title: Text(
                            'Song name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Artist name',
                            style: TextStyle(color: Colors.white70),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                barrierColor: Colors.white24,
                                backgroundColor: Colors.black,
                                context: context,
                                builder: (context) {
                                  return Center(child: Column());
                                },
                              );
                            },
                            icon: Icon(FontAwesomeIcons.ellipsisVertical,
                                color: Colors.white, size: 18.sp),
                          ),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Colors.purple.shade400,
          child: Icon(
            FontAwesomeIcons.play,
            size: 17.sp,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
