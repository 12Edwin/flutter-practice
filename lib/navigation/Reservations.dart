import 'package:flutter/material.dart';

class Reservations extends StatefulWidget {
  const Reservations ({super.key});

  @override
  State<Reservations> createState() => _Reservations();
}

class _Reservations extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservations'),
        automaticallyImplyLeading: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/top'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: const Icon(Icons.list),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: const Center(
        child: Text('Reservations'),
      ),
    );
  }
}