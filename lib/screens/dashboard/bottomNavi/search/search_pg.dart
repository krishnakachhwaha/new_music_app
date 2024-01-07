import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class search_pg extends StatefulWidget {
  const search_pg({Key? key}) : super(key: key);

  @override
  State<search_pg> createState() => _search_pgState();
}

class _search_pgState extends State<search_pg> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 35.sp, color: Colors.white),
            ),
            Text(
              'what would you like to listen today?',
              style: TextStyle(fontSize: 18.sp, color: Colors.white70),
            ),
            SizedBox(height: 18.h),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'song request',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.sp),
                      borderSide: BorderSide(color: Colors.white70)),
                  iconColor: Colors.white,
                  prefix: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17.sp),
                      borderSide: BorderSide(color: Colors.white))),
            ),
            SizedBox(height: 25.h),
            Text('Recently played',
                style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  width: 120.w,
                  height: 180.h,
                ),
              ),
            )),
            Text('Most searched songs',
                style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  width: 120.w,
                  height: 180.h,
                ),
              ),
            )),
            Text('Artists',
                style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  width: 120.w,
                  height: 180.h,
                ),
              ),
            )),
            Text('Playlists for you',
                style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    color: Colors.white,
                  ),
                  width: 120.w,
                  height: 180.h,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
