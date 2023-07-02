import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class play_pg extends StatefulWidget {
  const play_pg({Key? key}) : super(key: key);

  @override
  State<play_pg> createState() => _play_pgState();
}

class _play_pgState extends State<play_pg> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue.shade200, Colors.blue.shade900])),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                top: 10, start: 10, end: 10, bottom: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text('Soft Pop Hits',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Icon(FontAwesomeIcons.ellipsisH, color: Colors.white)
                  ],
                ),
                SizedBox(height: mqh * 0.05),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigo,
                  ),
                  width: mqw * 0.8,
                  height: mqh * 0.4,
                  child: Icon(FontAwesomeIcons.userAstronaut,
                      color: Colors.white, size: 150),
                ),
                SizedBox(height: mqh * 0.04),
                Text('Toylor Swift',
                    style: TextStyle(fontSize: 25, color: Colors.white)),
                SizedBox(height: mqh * 0.005),
                Text('Blank Space',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: mqh * 0.04),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.arrowDown,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.externalLink,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.tv,
                        color: Colors.white,
                        size: 20,
                      ),
                    ]),
                SizedBox(height: mqh * 0.02),
                Slider(
                    min: 0,
                    max: 10,
                    divisions: 10,
                    activeColor: Colors.purple,
                    inactiveColor: Colors.purple.shade200,
                    value: _currentValue,
                    onChanged: (value) {
                      setState(() {
                        _currentValue = value;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _currentValue.toString(),
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      _currentValue.toString(),
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      FontAwesomeIcons.shuffle,
                      color: Colors.white,
                      size: 25,
                    ),
                    Icon(
                      FontAwesomeIcons.backward,
                      color: Colors.white,
                      size: 25,
                    ),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        child: Icon(FontAwesomeIcons.play),
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.forward,
                      color: Colors.white,
                      size: 25,
                    ),
                    Icon(
                      FontAwesomeIcons.arrowsRotate,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
