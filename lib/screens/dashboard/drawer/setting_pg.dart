import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class setting_pg extends StatefulWidget {
  const setting_pg({Key? key}) : super(key: key);

  @override
  State<setting_pg> createState() => _setting_pgState();
}

class _setting_pgState extends State<setting_pg> {
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mqh * 0.05),
            BackButton(
              color: Colors.white,
            ),
            Text(
              '_______________________________________________________________________________________________________________________________________________________',
              style: TextStyle(fontSize: 5, color: Colors.grey),
            ),
            SizedBox(height: mqh * 0.02),
            Text(
              'Setting',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: mqh * 0.04),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.user,
                  size: 20,
                  color: Colors.purpleAccent,
                ),
                SizedBox(width: mqw * 0.02),
                Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: mqh * 0.01),
            Text(
              '_________________________________________________________________________________________________________________________________________________________________________',
              style: TextStyle(fontSize: 5, color: Colors.grey.shade400),
            ),
            ListTileTheme(
              iconColor: Colors.white70,
              textColor: Colors.white70,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Content settings',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Social',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Language',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Privacy and security',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  SizedBox(height: mqh * 0.04),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.volumeHigh,
                        size: 20,
                        color: Colors.purpleAccent,
                      ),
                      SizedBox(width: mqw * 0.03),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: mqh * 0.01),
                  Text(
                    '_________________________________________________________________________________________________________________________________________________________________________',
                    style: TextStyle(fontSize: 5, color: Colors.grey.shade400),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'News for you',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Account activiy',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      'Opportunity',
                      style: TextStyle(fontSize: 18),
                    ),
                    trailing: Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                          activeColor: Colors.purpleAccent,
                          value: true,
                          onChanged: (bool val) {}),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.purpleAccent)),
                  onPressed: () {},
                  child: Text(
                    'SIGN OUT',
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 8, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
