import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class play_pg extends StatefulWidget {
  const play_pg({Key? key}) : super(key: key);

  @override
  State<play_pg> createState() => _play_pgState();
}

class _play_pgState extends State<play_pg> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey.shade500, Colors.black])),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 50, start: 10, end: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  Text('Soft Pop Hits',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Icon(FontAwesomeIcons.ellipsisH, color: Colors.white)
                ],
              ),
              SizedBox(height: mqh * 0.05),
              Container(
                width: mqw * 0.8,
                height: mqh * 0.4,
                color: Colors.indigo,
                child: Icon(FontAwesomeIcons.userAstronaut,
                    color: Colors.white, size: 150),
              ),
              SizedBox(height: mqh * 0.05),
              Text('Toylor Swift',
                  style: TextStyle(fontSize: 25, color: Colors.grey)),
              SizedBox(height: mqh * 0.005),
              Text('Blank Space',
                  style: TextStyle(fontSize: 40, color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
