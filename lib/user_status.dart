import 'package:flutter/material.dart';

class UserStatus extends StatelessWidget {
  final int projects;
  final int following;
  final int followers;

  const UserStatus(
      {super.key,
      required this.projects,
      required this.followers,
      required this.following});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: _buildStatistic('projects', projects)),
          Flexible(child: _buildStatistic('Followers', followers)),
          Flexible(child: _buildStatistic('Following', following)),
        ],
      ),
    );
  }
}

Widget _buildStatistic(String label, int value) {
  return Column(
    children: [
      Text(
        '$value',
        style: TextStyle(fontSize: 15),
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
