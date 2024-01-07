// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import '../../../Bloc/theme_bloc.dart';
//
// Widget typeAnimation(BuildContext context) {
//   final typerTextStyle =
//       TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
//   return context.read<ThemeBloc>().state == ThemeMode.dark
//       ? AnimatedTextKit(
//           repeatForever:
//               context.read<ThemeBloc>().state == ThemeMode.dark ? false : true,
//           animatedTexts: [
//             TyperAnimatedText(
//               '𝕋𝕣𝕖𝕟𝕕𝕚𝕟𝕘 𝕣𝕚𝕘𝕙𝕥 𝕟𝕠𝕨',
//               textStyle: TextStyle(color: Colors.black),
//               speed: Duration(milliseconds: 100),
//             ),
//           ],
//         )
//       : AnimatedTextKit(
//           repeatForever:
//               context.read<ThemeBloc>().state == ThemeMode.dark ? true : false,
//           animatedTexts: [
//             TyperAnimatedText(
//               'Light',
//               textStyle: TextStyle(color: Colors.white),
//               speed: Duration(milliseconds: 100),
//             ),
//           ],
//         );
// }
