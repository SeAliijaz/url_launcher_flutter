import 'package:flutter/material.dart';
import 'package:url_launcher_flutter/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Url Launcher',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
