import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/screens/play%20screen/play_pg.dart';
import 'package:music_app/widgets/usefull_icon_button/playButton.dart';
import '../../../../Bloc/theme_bloc.dart';
import '../../../../conponents/arrData.dart';

class LikedSongs_pg extends StatefulWidget {
  const LikedSongs_pg({super.key});

  @override
  State<LikedSongs_pg> createState() => _LikedSongs_pgState();
}

class _LikedSongs_pgState extends State<LikedSongs_pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
          ? Colors.black
          : Colors.white,
      appBar: AppBar(
          leading: Container(),
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
        padding: EdgeInsets.only(right: 5.h, left: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text('10\nliked songs',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.white
                      : Colors.black,
                )),
            SizedBox(height: 10.h),
            Container(
              height: 45.h,
              width: 130.w,
              decoration: BoxDecoration(
                  color: context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.grey.shade900
                      : Colors.black12,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.add,
                    color: context.read<ThemeBloc>().state == ThemeMode.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  Text(
                    'ADD SONG',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.black),
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
                        onPressed: (context) {},
                        icon: FontAwesomeIcons.boxArchive,
                      ),
                    ]),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.sp),
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.grey.shade900
                                  : Colors.black12,
                        ),
                        height: 60.h,
                        child: GestureDetector(
                          onTap: () {
                            String img =
                                Data.arrNames[index]['arrImgNames'].toString();
                            String imgName =
                                Data.arrNames[index]['arrTitleNames'];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => play_pg(
                                          img: img,
                                          imgName: imgName,
                                        )));
                          },
                          child: ListTile(
                            leading: Image.asset('assets/images/song1.jpeg',
                                height: 33.h),
                            title: Text(
                              'Song name',
                              style: TextStyle(
                                  color: context.read<ThemeBloc>().state ==
                                          ThemeMode.dark
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Artist name',
                              style: TextStyle(
                                  color: context.read<ThemeBloc>().state ==
                                          ThemeMode.dark
                                      ? Colors.white70
                                      : Colors.black87),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) => ShowBottomSheet());
                              },
                              icon: Icon(FontAwesomeIcons.ellipsisVertical,
                                  color: context.read<ThemeBloc>().state ==
                                          ThemeMode.dark
                                      ? Colors.white
                                      : Colors.black,
                                  size: 18.sp),
                            ),
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
        child: PlyPauseButton(),
        shape: CircleBorder(),
        backgroundColor: Colors.purple.shade400,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget ShowBottomSheet() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesomeIcons.fileCirclePlus,
                  color: Colors.white,
                ),
                Text(
                  'add to playlist',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  'add to queue',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesomeIcons.share,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  'share',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.hide_source,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  'hide song',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );
}
