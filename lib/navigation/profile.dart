import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile ({super.key});

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/reservations'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: const Icon(Icons.account_balance),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: const Center(
        child: Text('Profile'),
      ),
    );
  }
}