import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home_pg(),
    );
  }
}

class home_pg extends StatefulWidget {
  const home_pg({Key? key}) : super(key: key);

  @override
  State<home_pg> createState() => _home_pgState();
}

class _home_pgState extends State<home_pg> with TickerProviderStateMixin {
  late AnimationController _homeController;
  late AnimationController _searchController;
  late AnimationController _libraryController;
  late AnimationController _worldController;
  @override
  void initState() {
    super.initState();

    _homeController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _searchController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _libraryController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _worldController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _homeController.dispose();
    _searchController.dispose();
    _libraryController.dispose();
    _worldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Trending right now',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: mqh * 0.7899999),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white38,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 60,
                    onPressed: () {
                      _homeController.repeat();
                      _homeController.forward();
                    },
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Lottie.asset("assets/lottie/home icon.json",
                          controller: _homeController),
                    ),
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () {
                      print(_searchController.status);
                      if (_searchController.isAnimating) {
                        // _searchController.stop();
                        _searchController.reset();
                      } else {
                        _searchController.forward();
                      }
                    },
                    icon: Lottie.asset("assets/lottie/search.json",
                        controller: _searchController,
                        height: 60,
                        fit: BoxFit.cover),
                  ),
                  MouseRegion(
                    onEnter: (event) {
                      _libraryController.repeat();
                    },
                    onExit: (event) {
                      _libraryController.stop();
                    },
                    child: IconButton(
                      iconSize: 35,
                      onPressed: () {
                        _libraryController.repeat();
                        _libraryController.forward();
                        /*if (_libraryController.status ==
                            AnimationStatus.dismissed) {
                          _libraryController.reset();
                          _libraryController.animateTo(1);
                        }*/ /*else {
                          _libraryController.reset();
                        }*/
                      },
                      icon: Lottie.asset('assets/lottie/19-book-solid.json',
                          controller: _libraryController,
                          height: 60,
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () {
                      if (_worldController.status ==
                          AnimationStatus.dismissed) {
                        _worldController.reset();
                        _worldController.animateTo(0.6);
                      } else {
                        _worldController.reverse();
                      }
                    },
                    icon: Lottie.asset(Icons8.globe,
                        controller: _worldController),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
