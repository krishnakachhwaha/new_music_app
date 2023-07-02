import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/screens/dashboard/bottomNavi/library_pg.dart';

class drawer_pg extends StatefulWidget {
  const drawer_pg({Key? key}) : super(key: key);

  @override
  State<drawer_pg> createState() => _drawer_pgState();
}

class _drawer_pgState extends State<drawer_pg> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    PageController controller = PageController();

    var mq = MediaQuery.of(context).size;
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.black45),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                ),
                body: Column(
                  children: [ListTile()],
                ),
                bottomNavigationBar: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 5, end: 5, bottom: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: mqh * 0.910,
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
                              color: Colors.black,
                              width: 1), // tab button border
                          tabBorder: Border.all(
                              color: Colors.grey,
                              width: 1), // tab button border
                          tabShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 8)
                          ], // tab button shadow
                          curve: Curves.easeOutExpo, // tab animation curves
                          duration: Duration(
                              milliseconds: 200), // tab animation duration
                          gap: 8, // the tab button gap between icon and text
                          color: Colors.grey[400], // unselected icon color
                          activeColor:
                              Colors.white, // selected icon and text color
                          iconSize: 24, // tab button icon size
                          tabBackgroundColor: Colors.purple.withOpacity(
                              0.3), // selected tab background color
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
                        ),
                      ),
                    ],
                  ),
                ))),
        drawer: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: mq.width * 0.05,
                height: mq.height * 0.05,
                margin: const EdgeInsets.only(top: 24, bottom: 64),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover),
              ),
              ListTile(
                  onTap: () {},
                  leading: Icon(LineIcons.home),
                  title: Text('Home')),
              ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => library_pg()));
                  },
                  leading: Icon(LineIcons.user),
                  title: Text('Profile')),
              Spacer(),
              DefaultTextStyle(
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Text('Terms of Service | Privacy Policy'),
                  ))
            ],
          ),
        ));
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
