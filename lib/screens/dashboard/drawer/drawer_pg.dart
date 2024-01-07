import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:music_app/Bloc/theme_bloc.dart';
import 'package:music_app/bloc/theme_events.dart';
import 'package:music_app/screens/dashboard/drawer/personalData.dart';
import 'package:music_app/screens/dashboard/drawer/setting_pg.dart';

class drawer_pg extends StatefulWidget {
  const drawer_pg({Key? key}) : super(key: key);

  @override
  State<drawer_pg> createState() => _drawer_pgState();
}

class _drawer_pgState extends State<drawer_pg> {
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.grey.shade900
            : Colors.grey.shade200,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(FontAwesomeIcons.x, color: Colors.white, size: 20)),
            ListTileTheme(
              textColor: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: mqh * 0.08),
                  Row(
                    children: [
                      SizedBox(width: mqw * 0.035),
                      CircleAvatar(
                          radius: 25,
                          child: Icon(
                            FontAwesomeIcons.userAstronaut,
                            size: 25,
                          )),
                      SizedBox(width: mqw * 0.035),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Krishna Kachhwaha',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: mqh * 0.003),
                          Text(
                            'krishnakac.....gmail.com',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: mqh * 0.005),
                  Text(
                    '_____________________________________________',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  SizedBox(height: mqh * 0.02),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => personalData()));
                    },
                    leading: Container(
                        width: mqw * 0.12,
                        height: mqh * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.yellow.shade50),
                        child: Icon(LineIcons.user,
                            color: Colors.yellow.shade700)),
                    title: Text(
                      'Personal data',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.grey.shade900,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_pg()));
                    },
                    leading: Container(
                        width: mqw * 0.12,
                        height: mqh * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue.shade50),
                        child: Icon(Icons.settings, color: Colors.blue)),
                    title: Text(
                      'Setting',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.grey.shade900,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        width: mqw * 0.12,
                        height: mqh * 0.06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.shade50),
                        child: Icon(Icons.help_outline, color: Colors.green)),
                    title: Text(
                      'Help',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: context.read<ThemeBloc>().state == ThemeMode.dark
                            ? Colors.white
                            : Colors.grey.shade900,
                      ),
                    ),
                  ),
                  ListTile(
                      leading: Container(
                          width: mqw * 0.12,
                          height: mqh * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.shade100),
                          child: Icon(Icons.light_mode, color: Colors.red)),
                      title: Text(
                        'Theme',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color:
                              context.read<ThemeBloc>().state == ThemeMode.dark
                                  ? Colors.white
                                  : Colors.grey.shade900,
                        ),
                      ),
                      trailing: Switch(
                        value:
                            context.read<ThemeBloc>().state == ThemeMode.dark,
                        onChanged: (value) {
                          context.read<ThemeBloc>().add(ThemeChanged(value));
                        },
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
