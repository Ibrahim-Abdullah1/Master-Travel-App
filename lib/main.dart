import 'package:flutter/material.dart';
import 'package:master_travel_app/pages/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Master Travel App",
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
