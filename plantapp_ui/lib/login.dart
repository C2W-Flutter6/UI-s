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
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: MediaQuery.of(context).size.width /
                      2, // Adjust width as needed
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height / 4,
                        right: MediaQuery.of(context).size.width / 6,
                        child: Circle(
                          radius: MediaQuery.of(context).size.width / 8,
                          color: Colors.green[100]!,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 3,
                        right: MediaQuery.of(context).size.width / 3,
                        child: Circle(
                          radius: MediaQuery.of(context).size.width / 5,
                          color: Colors.green[100]!,
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 2,
                        right: MediaQuery.of(context).size.width / 5,
                        child: Circle(
                          radius: MediaQuery.of(context).size.width / 10,
                          color: Colors.green[100]!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final double radius;
  final Color color;

  Circle({required this.radius, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 2.0),
      ),
    );
  }
}
