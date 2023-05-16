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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromRGBO(91, 77, 124, 1.0),
                Color.fromRGBO(34, 34, 61, 1)
              ])),
          child: Padding(
            padding:
                const EdgeInsetsDirectional.only(start: 15, end: 15, top: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mqh * 0.03),
                Text('Recent favourites',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: mqh * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.pinkAccent),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                      child: Icon(FontAwesomeIcons.music, size: 50),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.blue.shade200),
                      child: Icon(FontAwesomeIcons.music, size: 50),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                    ),
                  ],
                ),
                SizedBox(height: mqh * 0.140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.yellow),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                      child: Icon(FontAwesomeIcons.music, size: 50),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.green),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                      child: Icon(FontAwesomeIcons.music, size: 50),
                    ),
                  ],
                ),
                SizedBox(height: mqh * 0.140),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.orange),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                      child: Icon(FontAwesomeIcons.music, size: 50),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.purple),
                      width: mqw * 0.42,
                      height: mqh * 0.22,
                      child: Icon(FontAwesomeIcons.music, size: 50),
                    ),
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
