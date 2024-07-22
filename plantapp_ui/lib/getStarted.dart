// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/bg_img_1.webp",
              color: Colors.white.withOpacity(0), // Adjust opacity as needed
              colorBlendMode: BlendMode.srcATop,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(6),
              height: 90,
              //color: Colors.grey,
              child: const Text.rich(
                TextSpan(
                  text: "Enjoy your \nlife with ",
                  style: TextStyle(
                    fontSize: 27,
                    height: 1.3,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "PLANTS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //stops: [0.7, 0.3],
                  colors: [
                    Color.fromARGB(255, 85, 214, 89),
                    Color.fromARGB(255, 51, 123, 54),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(
                    const Size(double.maxFinite, 55),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Get Started  > ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
