import 'package:flutter/material.dart';

class GameAppHome extends StatefulWidget {
  @override
  _GameAppHOmeState createState() => _GameAppHOmeState();
}

class _GameAppHOmeState extends State<GameAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 140,
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            bottom: 120,
            child: Placeholder(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(),
              color: Colors.red,
            ),
          )

        ],
      ),
    );
  }
}

























