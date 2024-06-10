// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State createState() => _getStartedState();
}

class _getStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.tealAccent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/bg_img1.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
