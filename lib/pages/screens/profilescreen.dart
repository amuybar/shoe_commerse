import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Name:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Email:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
