import 'package:flutter/material.dart';
import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:swiftlauncher/Providers/AppThemeProvider.dart';
import 'package:swiftlauncher/Providers/DrawerChangeProvider.dart';
import 'package:swiftlauncher/Providers/DrawerHeightProvider.dart';
import 'package:swiftlauncher/screens/MainScreen.dart';
// import 'package:launcher_assist/launcher_assist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swift Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => AppThemeProvider()),
        ChangeNotifierProvider(create: (context) => DrawerHeightProvider()),
        ChangeNotifierProvider(create: (context) => DrawerChangeProvider()),
      ], child: MainScreen()),
    );
  }
}
