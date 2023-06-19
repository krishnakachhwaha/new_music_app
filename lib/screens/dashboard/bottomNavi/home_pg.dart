import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../slider/slider_pg.dart';

class home_pg extends StatefulWidget {
  const home_pg({Key? key}) : super(key: key);

  @override
  State<home_pg> createState() => _home_pgState();
}

class _home_pgState extends State<home_pg> {
  int selectedIndex = 0;
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.green,
  ];
  List<Text> text = [
    Text('HOME'),
    Text('SEARCH'),
    Text('LIBRARY'),
    Text('WORLD'),
  ];

  /* var arrnames = [home_pg(), search_pg(), library_pg(), world_pg()];*/
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(mqh * 0.35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 110, bottom: 35),
                      child: Text(
                        'Trending right now',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 41),
                          width: mqw * 1,
                          height: mqh * 0.2,
                          child: slider_pg()),
                    ),
                    TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  Colors.purple.shade500,
                                  Colors.purple.shade900,
                                  Colors.purple.shade900,
                                ])),
                        isScrollable: true,
                        tabs: [
                          Tab(child: Text('Trending right now')),
                          Tab(child: Text('Rock')),
                          Tab(child: Text('Hip Hop')),
                          Tab(child: Text('Electro')),
                        ]),
                  ],
                ),
              ),
            ),
            body: PageView.builder(
                itemCount: 4,
                controller: controller,
                onPageChanged: (page) {
                  setState(() {
                    selectedIndex = page;
                  });
                },
                itemBuilder: (context, position) {
                  return Container(
                    color: colors[position],
                    child: Center(child: text[position]),
                  );
                }),
            bottomNavigationBar: Padding(
              padding:
                  const EdgeInsetsDirectional.only(start: 5, end: 5, bottom: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: mqh * 0.760,
                  ),
                  Container(
                    width: mqw * double.infinity,
                    height: mqh * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white30),
                    child: GNav(
                      rippleColor: Colors.grey.shade800,
                      haptic: true,
                      tabBorderRadius: 13,
                      tabActiveBorder: Border.all(
                          color: Colors.black, width: 1), // tab button border
                      tabBorder: Border.all(
                          color: Colors.grey, width: 1), // tab button border
                      tabShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                      ], // tab button shadow
                      curve: Curves.easeOutExpo, // tab animation curves
                      duration:
                          Duration(milliseconds: 200), // tab animation duration
                      gap: 8, // the tab button gap between icon and text
                      color: Colors.grey[400], // unselected icon color
                      activeColor: Colors.white, // selected icon and text color
                      iconSize: 24, // tab button icon size
                      tabBackgroundColor: Colors.purple
                          .withOpacity(0.3), // selected tab background color
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5), // navigation bar padding
                      tabs: [
                        GButton(
                          icon: LineIcons.home,
                          text: 'Home',
                        ),
                        GButton(
                          icon: LineIcons.search,
                          text: 'Search',
                        ),
                        GButton(
                          icon: LineIcons.bookOpen,
                          text: 'Library',
                        ),
                        GButton(
                          icon: LineIcons.globe,
                          text: 'world',
                        ),
                      ],
                      selectedIndex: selectedIndex,
                      onTabChange: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                        controller.jumpToPage(index);
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
