import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tests_page.dart';
import 'settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PiPartner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
      routes: {
        '/tests': (context) => TestsPage(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
