import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State createState() => _GetStartedState();
}

class _GetStartedState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: const Column(children: [
          //Image
          //2 Elevated Buttons
          //Text
        ]),
      ),
    );
  }
}
