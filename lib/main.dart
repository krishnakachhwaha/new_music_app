// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:music_app/route.dart';
// import 'package:music_app/screens/dashboard/bottomNavi/typeAnimation.dart';
// import 'package:music_app/screens/dashboard/bottomNavi/home_pg.dart';
// import 'bloc/bottom_nav_bloc.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => BottomNavBloc(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         initialRoute: '/',
//         onGenerateRoute: RouteGen().generateRoute,
//         home: Home_page(),
//       ),
//     );
//   }
// }
