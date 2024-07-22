import 'package:flutter/material.dart';

// ignore: camel_case_types
class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 246, 250),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/bg_img_1.webp",
            color: Colors.white.withOpacity(0.1), // Adjust opacity as needed
            colorBlendMode: BlendMode.srcATop,
          ),
          const SizedBox(height: 10),
          Text("Data"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text("Hello"),
          ),
        ],
      ),
    );
  }
}
