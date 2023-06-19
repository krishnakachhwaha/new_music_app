import 'package:flutter/material.dart';
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
    var mq = MediaQuery.of(context);
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 10, end: 10, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search your vibe',
                  hintStyle: TextStyle(color: Colors.white),
                  suffix: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: mqh * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('BollyWood Artists',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text(
                    'see all >',
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  )
                ],
              ),
              SizedBox(height: mqh * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.purple,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.pink,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.orange,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: mqh * 0.04),
              Text('HollyWood Artists',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: mqh * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.red,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.yellow,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: mqw * 0.3,
                        height: mqh * 0.130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Align(
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            color: Colors.deepPurple,
                            size: 100,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: mqh * 0.03),
              Text(
                'Mood',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: mqh * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: mqh * 0.03),
              Text(
                'Jump back in',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: mqh * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: mqw * 0.3,
                    height: mqh * 0.130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Icon(
                      Icons.music_note,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
