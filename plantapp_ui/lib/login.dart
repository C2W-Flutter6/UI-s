import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width, // Adjust width as needed
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: -(MediaQuery.of(context).size.height / 9),
                  left: -(MediaQuery.of(context).size.width / 10),
                  child: Circle(
                    radius: MediaQuery.of(context).size.width / 6,
                    borderColor: Colors.green[100]!,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 14,
                  left: MediaQuery.of(context).size.width / 5.5,
                  child: Circle(
                    radius: MediaQuery.of(context).size.width / 8,
                    borderColor: Colors.green[100]!,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2.9,
                  left: MediaQuery.of(context).size.width / 2.9,
                  child: Circle(
                    radius: MediaQuery.of(context).size.width / 10,
                    borderColor: Colors.green[100]!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final double radius;
  final Color borderColor;

  const Circle({super.key, required this.radius, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2.0),
        color: Colors.transparent, // Make sure the inner part is transparent
      ),
    );
  }
}
