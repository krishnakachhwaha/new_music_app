import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Bloc/theme_bloc.dart';

class heartIcon extends StatefulWidget {
  const heartIcon({super.key});

  @override
  State<heartIcon> createState() => _heartIconState();
}

class _heartIconState extends State<heartIcon> {
  bool liked = false;
  IconData likeButton = FontAwesomeIcons.heart;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          likeButton,
          size: 20,
        ),
        onPressed: () {
          if (!liked) {
            setState(() {
              likeButton = FontAwesomeIcons.solidHeart;
              liked = true;
            });
          } else {
            setState(() {
              likeButton = FontAwesomeIcons.heart;
              liked = false;
            });
          }
        },
        color: context.read<ThemeBloc>().state == ThemeMode.dark
            ? Colors.white
            : Colors.black);
  }
}
