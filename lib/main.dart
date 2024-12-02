import 'package:flutter/material.dart';
import 'package:lesson_7/main_screen.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UserProfile',
      home: const MainScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
