import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Bloc/theme_bloc.dart';
import '../../../../widgets/usefull_icon_button/staggered.dart';

class AddArtist extends StatelessWidget {
  const AddArtist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.black
            : Colors.white,
        appBar: AppBar(
          backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
              ? Colors.grey.shade800
              : Colors.black12,
          bottom: TabBar(
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.normal, letterSpacing: 0),
              labelColor: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white
                  : Colors.black,
              indicatorColor: context.read<ThemeBloc>().state == ThemeMode.dark
                  ? Colors.white
                  : Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5.sp,
              isScrollable: true,
              unselectedLabelColor:
                  context.read<ThemeBloc>().state == ThemeMode.dark
                      ? Colors.white
                      : Colors.black87,
              tabs: [
                Tab(text: 'Hindi'),
                Tab(text: 'English'),
                Tab(text: 'Marathi'),
                Tab(text: 'Bhojpuri'),
                Tab(text: 'Tamil'),
                Tab(text: 'Punjabi'),
                Tab(text: 'Telugu'),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(children: [
                  hindi(),
                  english(),
                  marathi(),
                  bhojpuri(),
                  tamil(),
                  punjabi(),
                  telugu(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class hindi extends StatelessWidget {
  const hindi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class english extends StatelessWidget {
  const english({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class marathi extends StatelessWidget {
  const marathi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class bhojpuri extends StatelessWidget {
  const bhojpuri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class tamil extends StatelessWidget {
  const tamil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class punjabi extends StatelessWidget {
  const punjabi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}

class telugu extends StatelessWidget {
  const telugu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return staggeredAnimation();
  }
}
