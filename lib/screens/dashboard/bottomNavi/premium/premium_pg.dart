import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/screens/dashboard/bottomNavi/premium/prem_NoAds.dart';

class premium_pg extends StatefulWidget {
  const premium_pg({super.key});

  @override
  State<premium_pg> createState() => _premium_pgState();
}

class _premium_pgState extends State<premium_pg> {
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.white38,
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple, Colors.pink.shade100]),
            ),
            child: Icon(
              FontAwesomeIcons.crown,
              color: Colors.yellow,
              size: 20,
              shadows: [
                Shadow(
                    color: Colors.black54,
                    offset: Offset(1.5, 4),
                    blurRadius: 7)
              ],
            )),
        title: Row(
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontStyle: FontStyle.italic),
                  children: <TextSpan>[
                    TextSpan(text: 'Go'),
                    TextSpan(
                        text: ' Pro ',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 33,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal)),
                    TextSpan(text: 'and choose any plan\nyou like!'),
                  ]),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => prem_NoAds()));
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey.shade700,
                  ),
                  width: double.infinity,
                  height: mqh * 0.28,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(text: 'Go'),
                              TextSpan(
                                  text: ' Pro ',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal)),
                              TextSpan(text: '& See No Ads'),
                            ]),
                      ),
                      Lottie.network(
                          "https://lottie.host/46592b54-8fc9-45a2-88f9-602ea8f67d64/BC8qElS8P7.json",
                          height: 179),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mqh * 0.05),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => prem_StudPLan(),
                      ));
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey.shade700,
                  ),
                  width: double.infinity,
                  height: mqh * 0.28,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(text: 'Go'),
                              TextSpan(
                                  text: ' Pro ',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal)),
                              TextSpan(text: '& Choose Student\'s Plan '),
                            ]),
                      ),
                      Lottie.network(
                        "https://lottie.host/291a4a51-1e61-456a-9e48-30dff26db22d/ysLifniNCZ.json",
                        height: 179,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: mqh * 0.05),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => prem_FamlyPLan(),
                      ));
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey.shade700,
                  ),
                  width: double.infinity,
                  height: mqh * 0.28,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(text: 'Go'),
                              TextSpan(
                                  text: ' Pro ',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 33,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal)),
                              TextSpan(text: '& Choose Family Plan'),
                            ]),
                      ),
                      Lottie.network(
                        "https://lottie.host/1e123fe9-7e0f-471c-9dc7-d158da73004a/oWbtCudjep.json",
                        height: 179,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
