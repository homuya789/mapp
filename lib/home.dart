import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: Text("지금 2,841명이 함께해요")),
          ),
        ],
      ),
      body: const Center(child: Text("Welcome to the Home Screen!")),
    );
  }
}
