import 'package:flutter/material.dart';

class Top extends StatefulWidget {
  const Top ({super.key});

  @override
  State<Top> createState() => _Top();
}

class _Top extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top'),
        automaticallyImplyLeading: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: const Center(
        child: Text('Top'),
      ),
    );
  }
}