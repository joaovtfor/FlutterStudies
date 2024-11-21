import 'package:flutter/material.dart';

// import 'controllers/darkModeController.dart';
import 'views/homeView.dart';

// const AppLayout(){
//   return AnimatedBuilder(
//         animation: DarkModeController.instance,
//         builder: (context, child) {
//           return MaterialApp(
//             theme: ThemeData(
//                 primarySwatch: Colors.red,
//                 brightness: DarkModeController.instance.isDarkTheme
//                     ? Brightness.dark
//                     : Brightness.light),
//             routes: {
//               '/': (context) => const LoginPage(),
//             },
//           );
//         });
// }

main() {
  runApp(HomeView());
}
