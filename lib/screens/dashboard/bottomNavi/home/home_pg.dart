import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/hip%20hop_pg.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/mood.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/popular.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/recomm.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/rock_pg.dart';
import 'package:music_app/screens/dashboard/slider/slider_pg.dart';
import 'package:music_app/services/API_services.dart';
import '../../../../Bloc/theme_bloc.dart';
import '../../../../models/music_model.dart';
import '../../drawer/drawer_pg.dart';

class home_pg extends StatefulWidget {
  const home_pg({Key? key}) : super(key: key);
  @override
  State<home_pg> createState() => _home_pgState();
}

class _home_pgState extends State<home_pg> with TickerProviderStateMixin {
  List<MusicDataResponse> musicList = [];

  @override
  void initState() {
    super.initState();
    ApiService.getAllFetchMusicData();
  }

  Future<void> fetchMusicData() async {
    final musiclist = await ApiService.getAllFetchMusicData();
    setState(() {
      musicList = musiclist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.black
            : Colors.white,
        drawer: drawer_pg(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            right: 5.w,
          ),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      backgroundColor:
                          context.read<ThemeBloc>().state == ThemeMode.dark
                              ? Colors.black
                              : Colors.white,
                      expandedHeight: 340.h,
                      primary: true,
                      pinned: true,
                      flexibleSpace: SingleChildScrollView(
                        child: FlexibleSpaceBar(
                          titlePadding: EdgeInsets.only(top: 100.h),
                          centerTitle: true,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 80.h),
                              Text('𝕋𝕣𝕖𝕟𝕕𝕚𝕟𝕘 𝕣𝕚𝕘𝕙𝕥 𝕟𝕠𝕨',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: context.read<ThemeBloc>().state ==
                                              ThemeMode.dark
                                          ? Colors.purpleAccent
                                          : Colors.purple)),
                              SizedBox(height: 10.h),
                              slider_pg(
                                musicList: musicList,
                                index: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      bottom: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.sp,
                              color: context.read<ThemeBloc>().state ==
                                      ThemeMode.dark
                                  ? Colors.white
                                  : Colors.black),
                          isScrollable: true,
                          tabAlignment: TabAlignment.center,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.deepPurple.shade400,
                                    Colors.purpleAccent.shade200
                                  ])),
                          tabs: [
                            Tab(text: 'popular'),
                            Tab(text: 'recommended'),
                            Tab(text: 'hip hop'),
                            Tab(text: 'mood'),
                            Tab(text: 'rock'),
                          ]),
                    ),
                  ],
              body: Column(children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      popular(),
                      recomm(),
                      hiphop(),
                      mood(),
                      rock(),
                    ],
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
