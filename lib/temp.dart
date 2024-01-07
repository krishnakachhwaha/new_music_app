import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_app/screens/dashboard/bottomNavi/home/home_pg.dart';
import 'package:music_app/widgets/buttons.dart';

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("temp"),
      ),
      body: Center(
          child: Buttons.CustomButton("Next Page", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home_pg()));
      })),
    );
  }
}
