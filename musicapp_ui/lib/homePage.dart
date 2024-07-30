import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    // Get the screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight *
                0.75, // Set the height to 60% of the screen height
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img1.jpg"),
                  fit: BoxFit.cover, // Ensure the image covers the container
                ),
              ),
              child: Stack(
                //Text 1 : Dancing between the shadows....
                children: [
                  Positioned(
                    top: 400,
                    child: Text(
                      "Dancing between\n The shadows \nOf rhythm ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //Button 1: Get started
                  Positioned(
                    top: 420,
                    child: Text(
                      "Second text",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Button 2:Continue with email
          Container(
            width: 20,
            height: 20,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
