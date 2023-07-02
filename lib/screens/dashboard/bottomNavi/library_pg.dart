import 'package:flutter/material.dart';

class library_pg extends StatefulWidget {
  const library_pg({Key? key}) : super(key: key);

  @override
  State<library_pg> createState() => _library_pgState();
}

class _library_pgState extends State<library_pg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/download.jpeg'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('data'),
        ),
      ),
    );
  }
}
