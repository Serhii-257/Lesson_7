import 'package:flutter/material.dart';
import 'package:lesson_7/profile_header.dart';
import 'package:lesson_7/user_status.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(
            avatar: 'assets/images/3.jpg',
            name: 'New young programmist',
            description: 'Flutter developer',
          ),
          Divider(thickness: 1, height: 30),
          UserStatus(
            projects: 15,
            following: 1,
            followers: 1,
          ),
        ],
      ),
    );
  }
}
